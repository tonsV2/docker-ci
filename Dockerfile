FROM tmaier/docker-compose
ENV TARGET " "
ENV REGISTRY_HOST " "
WORKDIR /ci
ADD build-push.sh .
CMD exec ./build-push.sh
