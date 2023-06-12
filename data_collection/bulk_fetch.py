import os 
import sys 

sys.path.append('/home/jakob/Desktop/Jira_Oracle/utilities')


import file_utils 
import constants

from fetch_data import *
#from data_collection.fetch_data import fetch_data
from file_utils import load_json

from constants import DATA_FOLDER, DATA_COLLECTION_FOLDER

REPOSITORY_LIST_FILENAME = DATA_COLLECTION_FOLDER + "/known_repos.json"

def fetch_repositories(repositories):
    """Fetching data from a list of JIRA repositories"""

    if repositories is None:
        print("No JIRA repositories were found at", REPOSITORY_LIST_FILENAME)
        return
        
    for repository in repositories: 

        print("Enter for loop")
        if not os.path.exists("%s/%s" % (DATA_FOLDER, repository[0])):
            try:
                fetch_data(repository[0], repository[1])
            except Exception as e:
                print("Skipping %s because the following exception was thrown:" % repository[1])
                print(e)
                continue

if __name__ == "__main__":

    repositories = load_json('/home/jakob/Desktop/Jira_Oracle/'+REPOSITORY_LIST_FILENAME)
    fetch_repositories(repositories)