FROM tmaier/docker-compose
ENV TARGET " "
ENV REGISTRY_HOST " "
ADD build-push.sh /
WORKDIR /src
CMD exec /build-push.sh
