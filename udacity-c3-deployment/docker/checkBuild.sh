#!/bin/bash
echo $TRAVIS_BRANCH
if [ "$TRAVIS_BRANCH" == "staging" ]; then
    echo "staging build"
fi