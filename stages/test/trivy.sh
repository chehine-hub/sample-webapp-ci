#!/bin/bash

echo "***********************************"
echo "******** Scan Docker Image ********"
echo "***********************************"

trivy image --exit-code 1 maven-project-$ENV:$BUILD_TAG 
