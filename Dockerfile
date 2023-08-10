# Minimal Docker image for MetaProFi using Ubuntu base
FROM ubuntu:20.04
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install MetaProFi
RUN apt-get update -qq && apt-get upgrade -qq -y && \
    apt-get install -qq -y git python3-dev python3-pip && \
    pip3 install --no-cache-dir git+https://github.com/kalininalab/metaprofi.git && \
    rm -rf /tmp/*
