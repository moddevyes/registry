#!/bin/bash

# REGISTRY 
echo ""
echo "Building DOCKER image for registry."
echo ""
docker build -t registry-service .

echo ""
echo "Deploying/Running DOCKER image for registry."
echo ""

docker run -d --env-file config/.env.dev --name=commerce-registry-service --net=commerce-net -p 8761:8761 --restart unless-stopped registry-service

echo ""
echo "Done.."
echo ""
