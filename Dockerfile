# Minimal Docker image for MetaProFi using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install MetaProFi
RUN apk update && \
    apk add bash git py3-pip && \
    pip3 install --no-cache-dir git+https://github.com/kalininalab/metaprofi.git
