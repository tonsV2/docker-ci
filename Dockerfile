FROM tmaier/docker-compose
ENV SERVICE " "
ENV REGISTRY_URL " "
WORKDIR /
ADD build-push.sh .
CMD exec /build-push.sh
