#!/bin/bash
echo $TRAVIS_BRANCH
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
if [ "$TRAVIS_BRANCH" == "staging" ]; then
    echo "staging build"
    docker-compose -f udacity-c3-deployment/docker/docker-compose-build-qa.yaml build --parallel
    docker images
    docker push $DOCKER_USERNAME/udacity-restapi-user:qa
    docker push $DOCKER_USERNAME/udacity-restapi-feed:qa
    docker push $DOCKER_USERNAME/udacity-frontend:qa
else
    echo "master build"
    docker-compose -f udacity-c3-deployment/docker/docker-compose-build.yaml build --parallel
    docker images
    docker push $DOCKER_USERNAME/udacity-restapi-user
    docker push $DOCKER_USERNAME/udacity-restapi-feed
    docker push $DOCKER_USERNAME/udacity-frontend:local    
fi

docker logout

