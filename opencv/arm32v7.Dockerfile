FROM multiarch/debian-debootstrap:armhf-stretch-slim
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

ENV NO_CUDA=1
ENV NO_DISTRIBUTED=1

COPY install.sh /install.sh

RUN sh /install.sh

