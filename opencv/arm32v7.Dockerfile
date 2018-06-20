FROM inyoursaas/python3-numpy:arm32v7
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

COPY install.sh /install.sh

RUN sh /install.sh

