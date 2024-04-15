
## Project 4: Operationalizing a Machine Learning Microservice API

[![mAbdelFattah99](https://circleci.com/gh/mAbdelFattah99/proj4-ml-microservice.svg?style=svg)](https://app.circleci.com/pipelines/github/mAbdelFattah99/proj4-ml-microservice)


## Project Overview

In this project, you will apply the skills to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

-   Test your project code using linting
-   Complete a Dockerfile to containerize this application
-   Deploy your containerized application using Docker and make a prediction
-   Improve the log statements in the source code for this application
-   Configure Kubernetes and create a Kubernetes cluster
-   Deploy a container using Kubernetes and make a prediction
-   Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).



### Required Files walkthrough

+ `requirements.txt`: dependencies to be installed.
+ `app.py`: The *python* API starter source code.
+ `model_data/boston_housing_prediction.joblib`: where the machine learning model file is stored.
+ `Dockerfile`: defination of the container content.
+ `Makefile`: the defination of the helper commands.
+ `output_txt_files`: required outputs are available in the this directory.

---

## Running instructions

* Create a virtualenv and activate it: `python3 -m venv .devops-proj4 && source ~/.devops-proj4/bin/activate`
* Run `make install` to install the dependencies defined in requirements.txt file
* optional test app.py: `python app.py`
* run lint: `make lint`

* build and upload docker by completing the two files `./run_docker.sh` and `./upload_docker.sh`, then

    1. Setup requirements for docker such as Login credentials.
    2. Run app.py in Docker:  `./run_docker.sh`
    3. Upload it: `./upload_docker.sh` 

* Kubernetes instructions and steps as following:

    1. Setup requirements for kubernetes such as installing minikube and hypervisor.
    2. First start your *minikube* cluster: (`minikube start`) 
    3. run script `run_kubernetes.sh` 

* Run sample query: execute the `make_predictions.sh` script (`./make_predictions.sh`).

