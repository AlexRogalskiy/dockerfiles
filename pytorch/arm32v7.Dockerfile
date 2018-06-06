FROM multiarch/debian-debootstrap:armhf-stretch-slim
MAINTAINER Jeremie Drouet <jeremie@inyoursaas.io>

ENV NO_CUDA=1
ENV NO_DISTRIBUTED=1

RUN apt-get update && apt-get install -y \
  build-essential \
  bzip2 \
  cmake \
  curl \
  cython \
  g++ \
  git \
  libx11-6 \
  libatlas-dev \
  libblas-dev \
  libopenblas-dev \
  m4 \
  make \
  python3 \
  python3-dev \
  python3-pip \
  python3-yaml \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/pytorch/pytorch /pytorch \
  && cp /pytorch \
  && python3 -m pip install numpy typing \
  && python3 setup.py build \
  && python3 setup.py install

