FROM tmaier/docker-compose
ENV TARGET release
ENV REGISTRY_HOST " "
WORKDIR /src
CMD docker login -u $REGISTRY_USER -p $REGISTRY_PASS $REGISTRY_HOST && docker-compose build $TARGET && docker-compose push $TARGET
