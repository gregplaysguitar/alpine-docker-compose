FROM alpine:3.6

# install docker, docker-compose
RUN apk -v --update add \
        python \
        py-pip \
        docker \
        && \
    pip install docker-compose && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
