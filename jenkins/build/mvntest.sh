#!/bin/bash

echo "************************"
echo "*** Building the Jar ***"
echo "************************"

# The docker image that i'm using for building the jar & testing the image is same
# The version of docker image of maven used in the course is not working
# so i changed the maven image version for building & testing

docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.6.3-jdk-8-slim "$@"


