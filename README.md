
## Project 4: Operationalizing a Machine Learning Microservice API

[![mAbdelFattah99](https://circleci.com/gh/mAbdelFattah99/proj4-ml-microservice.svg?style=svg)](https://app.circleci.com/pipelines/github/mAbdelFattah99/proj4-ml-microservice)


## Project Overview

This project demonstrates the operationalization of a Machine Learning Microservice API using Kubernetes. The core application is a Python Flask web application (`app.py`) that serves inference predictions about housing prices through API calls. It utilizes a pre-trained `sklearn` machine learning model trained on Kaggle data to predict Boston housing prices based on features like average rooms, teacher-to-pupil ratios, and highway access.


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

