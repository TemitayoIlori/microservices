[![CircleCI](https://circleci.com/gh/TemitayoIlori/microservices/tree/main.svg?style=svg)](https://circleci.com/gh/TemitayoIlori/microservices/tree/main)

## Project Overview

The purpose of this project is to use the skills I acquired in in this course to operationalize a Machine Learning Microservice API. I made use of docker, kubernetes and circleci. 

### Project Tasks

I did the following in this project:
* Test my project code using linting
* Completed a Dockerfile to containerize this application
* Deployed my containerized application using Docker and I made a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and created a Kubernetes cluster
* Deployed a container using Kubernetes and make a prediction
* Uploadd a complete Github repo with CircleCI to indicate that your code has been tested


## Setup the Environment

* Created a virtualenv with Python 3.7 and activated it by running the following
   `python3 -m venv ~/.devops`
     `source ~/.devops/bin/activate`
* Run `make install` to install the necessary dependencies
* I did lint test by running
    `make lint`
* I installed minikube by running
   ` curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64`
   ` sudo install minikube-linux-amd64 /usr/local/bin/minikube`

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Summary of files
* app.py: This is a python script that serves as the containerized machine learning application
* run_docker.sh: This is the shell file where the docker image is built from the Dockerfile and the containerized flask app is run
* run_kubernetes.sh: This is used to deploy the application to a kubernetes cluster
* requirements.txt: This contains the list of all the packages to be installed as well as their versions
* Dockerfile: This contains all the information needed to build a docker image
* upload_docker.sh: This is used to upload the built docker image to docker
* make_prediction.sh: This is the shell script that is used to pass the input to the app
* config.yml: This contains information about the environment setup as well as what needs to run
