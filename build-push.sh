#! /bin/sh

echo $REGISTRY_PASS | docker login -u $REGISTRY_USER --password-stdin $REGISTRY_URL
# TODO: If not $skiptests docker-compose run test
docker-compose build $SERVICE
docker-compose push $SERVICE
