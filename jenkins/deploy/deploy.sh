#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth


scp -i /opt/prod /tmp/.auth admin@192.168.232.133:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish admin@192.168.232.133:/tmp/publish
ssh -i /opt/prod admin@192.168.232.133 "/tmp/publish"
