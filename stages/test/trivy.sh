#!/bin/bash

echo "***********************************"
echo "******** Scan Docker Image ********"
echo "***********************************"

trivy image --severity "HIGH,CRITICAL" --exit-code 0 maven-project-$ENV:$BUILD_TAG 
