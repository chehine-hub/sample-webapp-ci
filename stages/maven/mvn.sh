#!/bin/bash

echo "****************************"
echo "******* Building WAR *******"
echo "****************************"

docker run --rm -v /root/jenkins-agent/workspace/Sample-WebApp-CI/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-openjdk-11 "$@"
