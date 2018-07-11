#! /bin/sh

echo $REGISTRY_PASS | docker login -u $REGISTRY_USER --password-stdin $REGISTRY_URL
docker-compose build $TARGET
docker-compose push $TARGET
