#!/bin/bash

apt-get update
apt-get install -y cmake wget

pip3 install numpy

wget -O /opencv.tar.gz https://github.com/opencv/opencv/archive/3.4.1-cvsdk.tar.gz
wget -O /opencv-contrib.tar.gz https://github.com/opencv/opencv_contrib/archive/3.4.1.tar.gz

tar xf opencv.tar.gz
tar xf opencv-contrib.tar.gz

mv opencv-3.4.1-cvsdk opencv
mv opencv_contrib-3.4.1 opencv-contrib

mkdir -p /opencv/build
cd /opencv/build

cmake \
  -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D OPENCV_EXTRA_MODULES_PATH=/opencv-contrib/modules \
  -D BUILD_EXAMPLES=ON \
  ..

make
make install

apt-get clean

rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
