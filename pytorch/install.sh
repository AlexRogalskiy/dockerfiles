#!/bin/bash

apt-get update

apt-get install -y \
  build-essential \
  cmake \
  cython \
  g++ \
  git \
  libx11-6 \
  libatlas-dev \
  libblas-dev \
  libopenblas-dev \
  make \
  python3-dev

python3 -m pip install typing pyyaml

git clone --recursive https://github.com/pytorch/pytorch /pytorch

cd /pytorch

python3 setup.py build
python3 setup.py install

cd /

apt-get remove -y \
  build-essential \
  g++ \
  git \
  cmake \
  make \
  python3-dev

apt-get clean

rm -rf /pytorch
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
