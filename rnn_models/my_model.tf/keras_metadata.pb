
�;root"_tf_keras_sequential*�:{"name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": false, "class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "token_and_position_embedding_3_input"}}, {"class_name": "keras_nlp>TokenAndPositionEmbedding", "config": {"name": "token_and_position_embedding_3", "trainable": true, "dtype": "float32", "vocabulary_size": 9243, "sequence_length": 256, "embedding_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "mask_zero": true}}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_9", "trainable": true, "dtype": "float32", "intermediate_dim": 512, "dropout": 0.11428114568757548, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}}}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_10", "trainable": true, "dtype": "float32", "intermediate_dim": 128, "dropout": 0.1880763857651768, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}}}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_11", "trainable": true, "dtype": "float32", "intermediate_dim": 256, "dropout": 0.36738043008209137, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last", "keepdims": false}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.24686186951876748, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 17, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256]}, "int32", "token_and_position_embedding_3_input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256]}, "int32", "token_and_position_embedding_3_input"]}, "keras_version": "2.12.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "token_and_position_embedding_3_input"}, "shared_object_id": 0}, {"class_name": "keras_nlp>TokenAndPositionEmbedding", "config": {"name": "token_and_position_embedding_3", "trainable": true, "dtype": "float32", "vocabulary_size": 9243, "sequence_length": 256, "embedding_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "mask_zero": true}, "shared_object_id": 2}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_9", "trainable": true, "dtype": "float32", "intermediate_dim": 512, "dropout": 0.11428114568757548, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}}, "shared_object_id": 5}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_10", "trainable": true, "dtype": "float32", "intermediate_dim": 128, "dropout": 0.1880763857651768, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}}, "shared_object_id": 8}, {"class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_11", "trainable": true, "dtype": "float32", "intermediate_dim": 256, "dropout": 0.36738043008209137, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}}, "shared_object_id": 11}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last", "keepdims": false}, "shared_object_id": 12}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.24686186951876748, "noise_shape": null, "seed": null}, "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 18}, {"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 19}, {"class_name": "MeanAbsolutePercentageError", "config": {"name": "mean_absolute_percentage_error", "dtype": "float32"}, "shared_object_id": 20}, {"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 21}, {"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 22}, {"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Custom>AdamW", "config": {"name": "AdamW", "weight_decay": 0.007652624915370285, "clipnorm": null, "global_clipnorm": null, "clipvalue": null, "use_ema": false, "ema_momentum": 0.99, "ema_overwrite_frequency": null, "jit_compile": true, "is_legacy_optimizer": false, "learning_rate": 0.00025027396623045206, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "token_and_position_embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "keras_nlp>TokenAndPositionEmbedding", "config": {"name": "token_and_position_embedding_3", "trainable": true, "dtype": "float32", "vocabulary_size": 9243, "sequence_length": 256, "embedding_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "mask_zero": true}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "f_net_encoder_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_9", "trainable": true, "dtype": "float32", "intermediate_dim": 512, "dropout": 0.11428114568757548, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}}, "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "f_net_encoder_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_10", "trainable": true, "dtype": "float32", "intermediate_dim": 128, "dropout": 0.1880763857651768, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}}, "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�root.layer_with_weights-3"_tf_keras_layer*�{"name": "f_net_encoder_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "keras_nlp>FNetEncoder", "config": {"name": "f_net_encoder_11", "trainable": true, "dtype": "float32", "intermediate_dim": 256, "dropout": 0.36738043008209137, "activation": "relu", "layer_norm_epsilon": 1e-05, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�root.layer-4"_tf_keras_layer*�{"name": "global_average_pooling1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_3", "trainable": true, "dtype": "float32", "data_format": "channels_last", "keepdims": false}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�root.layer-5"_tf_keras_layer*�{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.24686186951876748, "noise_shape": null, "seed": null}, "shared_object_id": 13, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�)root.layer_with_weights-0.token_embedding"_tf_keras_layer*�{"name": "token_embedding4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": false, "class_name": "Embedding", "config": {"name": "token_embedding4", "trainable": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "input_dim": 9243, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}, "shared_object_id": 27}2
�,root.layer_with_weights-0.position_embedding"_tf_keras_layer*�{"name": "position_embedding4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "keras_nlp>PositionEmbedding", "config": {"name": "position_embedding4", "trainable": true, "dtype": "float32", "sequence_length": 256, "initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}}, "shared_object_id": 29, "build_input_shape": {"class_name": "__tuple__", "items": [null, 256, 64]}}2
�,root.layer_with_weights-1._mixing_layer_norm"_tf_keras_layer*�{"name": "layer_normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 31}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 32}2
� ,root.layer_with_weights-1._output_layer_norm"_tf_keras_layer*�{"name": "layer_normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 35}2
�!-root.layer_with_weights-1._intermediate_dense"_tf_keras_layer*�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 38, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 39}}2
�"'root.layer_with_weights-1._output_dense"_tf_keras_layer*�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 43}}2
�#)root.layer_with_weights-1._output_dropout"_tf_keras_layer*�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.11428114568757548, "noise_shape": null, "seed": null}, "shared_object_id": 44, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�*,root.layer_with_weights-2._mixing_layer_norm"_tf_keras_layer*�{"name": "layer_normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 46}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 47}2
�+,root.layer_with_weights-2._output_layer_norm"_tf_keras_layer*�{"name": "layer_normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 49}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 50}2
�,-root.layer_with_weights-2._intermediate_dense"_tf_keras_layer*�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 51}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 54}}2
�-'root.layer_with_weights-2._output_dense"_tf_keras_layer*�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 55}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 56}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 57, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 58}}2
�.)root.layer_with_weights-2._output_dropout"_tf_keras_layer*�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1880763857651768, "noise_shape": null, "seed": null}, "shared_object_id": 59, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
�5,root.layer_with_weights-3._mixing_layer_norm"_tf_keras_layer*�{"name": "layer_normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 62}2
�6,root.layer_with_weights-3._output_layer_norm"_tf_keras_layer*�{"name": "layer_normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 63}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 64}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 65}2
�7-root.layer_with_weights-3._intermediate_dense"_tf_keras_layer*�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 66}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 67}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 68, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 69}}2
�8'root.layer_with_weights-3._output_dense"_tf_keras_layer*�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 73}}2
�9)root.layer_with_weights-3._output_dropout"_tf_keras_layer*�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.36738043008209137, "noise_shape": null, "seed": null}, "shared_object_id": 74, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 64]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 75}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 18}2
��root.keras_api.metrics.2"_tf_keras_metric*�{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 19}2
��root.keras_api.metrics.3"_tf_keras_metric*�{"class_name": "MeanAbsolutePercentageError", "name": "mean_absolute_percentage_error", "dtype": "float32", "config": {"name": "mean_absolute_percentage_error", "dtype": "float32"}, "shared_object_id": 20}2
��root.keras_api.metrics.4"_tf_keras_metric*�{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 21}2
��root.keras_api.metrics.5"_tf_keras_metric*�{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 22}2
��root.keras_api.metrics.6"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 23}2