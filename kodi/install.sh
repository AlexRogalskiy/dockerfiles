#!/bin/bash

apt-get update

apt-get install -y fbset libraspberrypi0 kodi ffmpeg mplayer2 mpv

rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*

