FROM tmaier/docker-compose
ENV TARGET release
ENV REGISTRY_HOST " "
WORKDIR /src
CMD docker login --username=$REGISTRY_USER --password=$REGISTRY_PASS $REGISTRY_HOST && docker-compose build $TARGET && docker-compose push $TARGET
