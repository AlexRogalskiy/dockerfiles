FROM inyoursaas/python3-numpy:arm64v8
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

ENV NO_CUDA=1
ENV NO_DISTRIBUTED=1

COPY install.sh /install.sh

RUN sh /install.sh

