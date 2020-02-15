#!/bin/bash
echo $TRAVIS_BRANCH
if [ "$TRAVIS_BRANCH" == "staging" ]; then
    echo "staging build"
    docker-compose -f udacity-c3-deployment/docker/docker-compose-build-qa.yaml build --parallel
else
    echo "master build"
    docker-compose -f udacity-c3-deployment/docker/docker-compose-build.yaml build --parallel
fi