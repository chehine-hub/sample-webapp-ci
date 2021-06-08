#!/bin/bash

echo "***********************************"
echo "******** Scan Docker Image ********"
echo "***********************************"

trivy image --exit-code 0 maven-project-$ENV:$BUILD_TAG 
