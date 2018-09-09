all: build push

arm32v7: build-arm32v7 push-arm32v7

build: build-arm32v7

build-arm32v7:
	docker build -f arm32v7.Dockerfile -t inyoursaas/kodi:arm32v7 .

push: push-arm32v7

push-arm32v7:
	docker push inyoursaas/kodi:arm32v7

