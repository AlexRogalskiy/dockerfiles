FROM inyoursaas/python3-numpy:arm32v7
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

ENV NO_CUDA=1
ENV NO_DISTRIBUTED=1

COPY install.sh /install.sh

RUN sh /install.sh

