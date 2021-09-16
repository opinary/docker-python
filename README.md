# docker-python
Python 3.6 docker image with ML dependencies for opinary automation services

This image is also useful for running CI builds and tests when gcloud and Docker are needed.

Image contains:

* Python 3.6.9
* gcloud 357.0.0
* Docker 17.03.0-ce

# Building and pushing the image to Dockerhub


The process of building and pushing the image to DockerHub is done as part of the CircleCI pipeline. The Dockerhub organization currently used is: https://hub.docker.com/orgs/opinarygmbh 

In order to authenticate, the credentials have been stored as environment variables of the CircleCI pipeline under the context **push-to-dockerhub** with the names DOCKERHUB_PASS and DOCKERHUB_USERNAME. These credentials must belong to one of the users of the [opinarygmbh](https://hub.docker.com/orgs/opinarygmbh) dockerhub organization.  
