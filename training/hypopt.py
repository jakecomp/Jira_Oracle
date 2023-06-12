from hyperopt import fmin, tpe, hp, STATUS_FAIL, STATUS_OK, Trials
from hyperopt.pyll.base import scope
import gc
import json
import numpy as np
import pickle
import sys

from data_preprocessing.filter_config import FilterConfig
from data_preprocessing.filter_data import filter_data
from embedding_pretraining.count_tokens import count_tokens
from embedding_pretraining.spacy_lookup import spacy_lookup
from embedding_pretraining.train_gensim import train_gensim
from training.train import train_on_dataset
from utilities.constants import *
from utilities.file_utils import load_json, get_next_subfolder_name, create_subfolder


def create_space(embedding_type, lstm_count, conform_type, workers):

    if lstm_count == "bi":
        lstm_count = "3"

    if embedding_type == "spacy":
        embedding_space = {
                "type": "spacy"
            }

    if embedding_type == "gensim":
        embedding_space = {
                "type": "gensim",
                "algorithm": hp.choice("word_embeddings_algorithm", ["skip-gram", "CBOW"]),
                "embedding_size": scope.int(hp.quniform("word_embeddings_embedding_size", 5, 500, 1)),
                "minimum_count": scope.int(hp.quniform("word_embeddings_minimum_count", 1, 15, 1)),
                "window_size": scope.int(hp.quniform("word_embeddings_window_size", 3, 15, 1)),
                "iterations": scope.int(hp.quniform("word_embeddings_iterations", 5, 20, 1))
            }

    space = {
        'word_embeddings': embedding_space,
        'model_params':
        {
            'max_words': (15, 95) if int(lstm_count) == 2 else (100, 0),
            'lstm_count' : int(lstm_count),
            'lstm_node_count': scope.int(hp.quniform('lstm_node_count', 5, 150, 1)),
            'conform_type': conform_type,
            'conform_layer_count': scope.int(hp.quniform('conform_layer_count', 5, 150, 1)),
            'conform_activation': hp.choice("conform_activation", ["relu", "tanh"]),
            'dropout': hp.uniform('dropout', 0, 0.7),
            'batch_size': 512,
            'optimizer': hp.choice('optimizer', [
                ('rmsprop', hp.uniform('rmsprop_lr', 0.0005, 0.005)),
                ('adam', hp.uniform('adam_lr', 0.0005, 0.005))
            ]),
            'loss': 'mean_absolute_error',
            'workers': int(workers)
        },
        "min_delta": 0.05,
        "patience": 5
    }

    if int(lstm_count) == 2:
        space["model_params"]["lstm_recurrent_dropout_1"] = hp.uniform('lstm_recurrent_dropout_1', 0, 0.7)
        space["model_params"]["lstm_dropout_1"] = hp.uniform('lstm_dropout_1', 0, 0.7)
        space["model_params"]["lstm_recurrent_dropout_2"] = hp.uniform('lstm_recurrent_dropout_2', 0, 0.7)
        space["model_params"]["lstm_dropout_2"] = hp.uniform('lstm_dropout_2', 0, 0.7)
    else:
        space["model_params"]["lstm_recurrent_dropout"] = hp.uniform('lstm_recurrent_dropout', 0, 0.7)
        space["model_params"]["lstm_dropout"] = hp.uniform('lstm_dropout', 0, 0.7)

    if int(lstm_count) == 3:
        space["model_params"]["bi_lstm_merge_mode"] = hp.choice("bi_lstm_merge_mode", ["sum", "mul", "concat", "ave"])

    return space


def remove_negative_values(nested_dictionary):

    result = {}
    for key, value in nested_dictionary.items():
        if isinstance(value, dict):
            result[key] = remove_negative_values(value)
        elif isinstance(value, int):
            result[key] = max(0, value)
        else:
            result[key] = value
    return result


def objective(configuration):

    print("--- NEW CONFIGURATION ---")

    configuration = remove_negative_values(configuration)
    print(configuration)

    training_session_id = configuration['training_session_id']
    training_session_folder = "%s/%s" % (RESULTS_FOLDER, training_session_id)
    create_subfolder(training_session_folder, configuration["run_id"], rewrite=False)
    loss, val_loss = train_on_dataset(configuration)

    log_filename = "%s/%s/%s%s" % (RESULTS_FOLDER, training_session_id, RESULTS_FILENAME, TEXT_FILE_EXTENSION)
    with open(log_filename, "a") as log_file:
        print("Run: %s, Loss: %.4f, val_loss: %.4f" % (configuration["run_id"], loss, val_loss), file=log_file)

    return {
        "loss": loss,
        "val_loss": val_loss,
        "status": STATUS_OK
    }


def optimize_model(embedding_type, lstm_count, conform_type, training_dataset_id, min_project_size, min_word_count, workers, training_session_id = None):

    space = create_space(embedding_type, lstm_count, conform_type, workers)
    space["training_dataset_id"] = training_dataset_id
    if training_session_id == None:
        space["training_session_id"] = "%s_%s_%s" % (get_next_subfolder_name(RESULTS_FOLDER), training_dataset_id, embedding_type)
        create_subfolder(RESULTS_FOLDER, space["training_session_id"])
    else:
        space["training_session_id"] = training_session_id

    space["min_word_count"] = int(min_word_count)
    space["min_timespent_minutes"] = 10
    space["max_timespent_minutes"] = 960
    space["min_project_size"] = int(min_project_size)
    space["bin_count"] = 0

    trials_filename = "%s/%s/%s%s" % (RESULTS_FOLDER, space["training_session_id"], "trials", PICKLE_FILE_EXTENSION)
    try:
        trials = pickle.load(open(trials_filename, "rb"))
        run_id = len(trials.trials) + 1
        print("Resuming existing trials session with %d completed runs" % len(trials.trials))
    except:
        trials = Trials()
        run_id = 1
        print("Staring new trials session")

    filter_config = FilterConfig()
    filter_config.min_word_count = space["min_word_count"]
    filter_config.min_timespent_minutes = space["min_timespent_minutes"]
    filter_config.max_timespent_minutes = space["max_timespent_minutes"]
    filter_config.min_project_size = space["min_project_size"]
    filter_config.even_distribution_bin_count = space["bin_count"]

    log_filename = "%s/%s/%s%s" % (RESULTS_FOLDER, space["training_session_id"], RESULTS_FILENAME, TEXT_FILE_EXTENSION)
    filter_data(training_dataset_id, filter_config, log_filename if run_id == 1 else None)

    evals = 150 if embedding_type == "spacy" else 200
    for eval_num in range(run_id, evals + 1):

        max_trials = 7
        for _ in range(max_trials):
            # maybe because they are accessing the same filtered data? But this is less likely.
            # this sometimes throws OSError 35 on MAC OS X, https://github.com/urllib3/urllib3/issues/63
            try:
                space["run_id"] = eval_num
                best = fmin(objective,
                space=space,
                algo=tpe.suggest,
                max_evals=eval_num,
                trials=trials,
                rstate=np.random.RandomState(eval_num * 796525))
            except OSError:
                continue
            with open(trials_filename, "wb") as f:
                pickle.dump(trials, f)
            break

    print("BEST:")
    print(best)

if __name__ == "__main__":

    optimize_model(
        sys.argv[1],
        sys.argv[2],
        sys.argv[3],
        sys.argv[4],
        sys.argv[5],
        sys.argv[6],
        sys.argv[7],
        None if len(sys.argv) < 9 else sys.argv[8])