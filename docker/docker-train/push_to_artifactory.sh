#!/bin/bash     
PROJECT_ID="XXXX"
REGION="europe-west1"
REPOSITORY="winequality"
IMAGE="scikit-learn-winequality-train:latest"


#Create repository dans artifactory
gcloud beta artifacts repositories create $REPOSITORY \
 --repository-format=docker \
 --location=$REGION
 
 
# Configure Docker
gcloud auth configure-docker $REGION-docker.pkg.dev
 
 # Push
docker push $REGION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE