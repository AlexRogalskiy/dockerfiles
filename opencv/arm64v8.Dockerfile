FROM inyoursaas/python3-numpy:arm64v8
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

COPY install.sh /install.sh

RUN sh /install.sh

