#!/bin/bash

echo "***********************************"
echo "******** Scan Docker Image ********"
echo "***********************************"

trivy image --severity "HIGH,CRITICAL" --exit-code 1 maven-project-$ENV:$BUILD_TAG 
