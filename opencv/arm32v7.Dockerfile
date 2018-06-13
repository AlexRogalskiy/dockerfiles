FROM multiarch/debian-debootstrap:armhf-stretch-slim
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

COPY install.sh /install.sh

RUN sh /install.sh

