FROM tmaier/docker-compose
ENV TARGET " "
ENV REGISTRY_URL " "
WORKDIR /ci
ADD build-push.sh .
CMD exec ./build-push.sh
