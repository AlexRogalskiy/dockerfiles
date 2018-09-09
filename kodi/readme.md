# Kodi image for arm32v7 (raspberry pi)

```bash
docker run -d \
	--name kodi \
	-p 8080:8080 \
	-p 9090:9090 \
	-p 9777:9777/udp \
	-v <path-to-your-multimedia>:/multimedia \
	-v <path-to-the-configuration>:/home/kodi/.kodi \
	-v /usr/bin/tvservice:/usr/bin/tvservice:ro \
	-v /opt/vc:/opt/vc:ro \
	-v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
	--device=/dev/vchiq:/dev/vchiq \
	--device=/dev/fb0:/dev/fb0 \
	--device=/dev/vcio:/dev/vcio \
	--device=/dev/vcsm:/dev/vcsm \
	--device=/dev/vc-mem:/dev/vc-mem \
	--user kodi:video \
	kodi
```
