FROM arm64v8/python:3.6-jessie
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

COPY install.sh /install.sh

RUN sh /install.sh

