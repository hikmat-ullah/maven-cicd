#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"

docker login -u hikmatmarwat -p $PASS

echo "*** Tagging image ***"

docker tag $IMAGE:$BUILD_TAG hikmatmarwat/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"

docker push hikmatmarwat/$IMAGE:$BUILD_TAG
