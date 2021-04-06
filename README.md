
## Project 4: Operationalizing a Machine Learning Microservice API

[![mAbdelFattah99](https://circleci.com/gh/mAbdelFattah99/proj4-ml-microservice.svg?style=svg)](https://app.circleci.com/pipelines/github/mAbdelFattah99/proj4-ml-microservice)


### Project summary

This project exposes a predictive model via a containerized REST API.

### Files walkthrough

+ `requirements.txt` file: dependencies to be installed.
+ `app.py` file: The *python* API starter source code.
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

+ Run app.py in Docker:  `./run_docker.sh`
+ Upload it: `./upload_docker.sh` 

* Kubernetes instructions and steps as following:

+ First start your *minikube* cluster (`minikube start`) then execute the `run_kubernetes.sh` script (`./run_kubernetes.sh`). You may need to re-run the script because the port forwarding command requires the pod to be up.

* Run sample query

+ To run a sample query though the web service, execute the `make_predictions.sh` script (`./make_predictions.sh`).

