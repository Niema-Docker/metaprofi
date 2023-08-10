# Minimal Docker image for MetaProFi using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install MetaProFi
RUN apk update && \
    apk add bash cython g++ git lapack-dev linux-headers musl-dev openblas-dev py3-pip py3-yaml python3-dev yaml-dev && \
    pip3 install --no-cache-dir git+https://github.com/kalininalab/metaprofi.git && \
    rm -rf /tmp/*
