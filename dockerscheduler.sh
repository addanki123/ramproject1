#!/bin/bash

#set -ex
DIR='cmd'
REGISTRY="hub.docker.com"
TAG="${1}"
for file in "$DIR"/*
do
        echo $file
        IMAGE_NAME="$file"
        docker build -t ${REGISTRY}/${IMAGE_NAME}:${TAG} -t ${REGISTRY}/${IMAGE_NAME}:latest .
        docker push ${REGISTRY}/${IMAGE_NAME}
done
