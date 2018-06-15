#!/bin/bash

apt-get update
apt-get install -y cmake wget

pip3 install numpy

wget -O /opencv.tar.gz https://github.com/opencv/opencv/archive/3.4.1-cvsdk.tar.gz
wget -O /opencv-contrib.tar.gz https://github.com/opencv/opencv_contrib/archive/3.4.1.tar.gz

tar xf opencv.tar.gz
tar xf opencv-contrib.tar.gz

rm opencv.tar.gz
rm opencv-contrib.tar.gz

mv opencv-3.4.1-cvsdk opencv
mv opencv_contrib-3.4.1 opencv-contrib

mkdir -p /opencv/build
cd /opencv/build

cmake \
  -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D OPENCV_EXTRA_MODULES_PATH=/opencv-contrib/modules \
  -D BUILD_EXAMPLES=OFF \
  -D BUILD_opencv_apps=OFF \
  -D BUILD_DOCS=OFF \
  -D BUILD_PERF_TESTS=OFF \
  -D BUILD_TESTS=OFF \
  -D INSTALL_PYTHON_EXAMPLES=OFF \
  ..

make
make install

cd /

rm -rf /opencv /opencv-contrib

apt-get remove -y wget cmake
apt-get clean

rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
