FROM resin/rpi-raspbian:stretch

COPY install.sh /install.sh

RUN sh install.sh

RUN useradd -u 1000 -g 40 -ms /bin/bash kodi

CMD (mkdir -p /home/kodi/.kodi/temp && touch /home/kodi/.kodi/temp/kodi.log; tail -f /home/kodi/.kodi/temp/kodi.log & kodi --debug)

