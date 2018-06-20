FROM arm64v8/python:3.6-stretch
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

RUN pip3 install numpy && rm -rf /tmp/*

