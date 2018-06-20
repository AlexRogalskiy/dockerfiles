#!/bin/bash

apt-get update

apt-get install -y git python3-pil

git clone --recursive https://github.com/pytorch/vision.git /pytorchvision

cd /pytorchvision

python3 setup.py install

cd /

apt-get remove -y git python3-pil
apt-get autoremove
apt-get clean

rm -rf /pytorchvison
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
