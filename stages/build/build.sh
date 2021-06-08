#!/bin/bash

echo "***********************************"
echo "****** Building Docker Image ******"
echo "***********************************"

rm -rf stages/build/*.war
cp java-app/target/*.war stages/build/
cd stages/build/ && docker-compose -f docker-compose-build.yml build --no-cache
