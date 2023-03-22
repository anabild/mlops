#!/bin/bash     
PROJECT_ID="XXXX"
REGION="europe-west1"
REPOSITORY="winequality"
IMAGE="scikit-learn-winequality-train:latest"

docker build --tag=$REGION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE .