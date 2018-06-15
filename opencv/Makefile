all: build test push

arm32v7: build-arm32v7 test-arm32v7 push-arm32v7
arm64v8: build-arm64v8 test-arm64v8 push-arm64v8

build: build-arm64v8 build-arm32v7

build-arm64v8:
	docker build -f arm64v8.Dockerfile -t inyoursaas/opencv:arm64v8 .

build-arm32v7:
	docker build -f arm32v7.Dockerfile -t inyoursaas/opencv:arm32v7 .

push: push-arm64v8 push-arm32v7

push-arm64v8:
	docker push inyoursaas/opencv:arm64v8

push-arm32v7:
	docker push inyoursaas/opencv:arm32v7

test: test-arm64v8 test-arm32v7

test-arm64v8:
	docker run -it --rm inyoursaas/opencv:arm64v8 python3 -c "import cv2"

test-arm32v7:
	docker run -it --rm inyoursaas/opencv:arm32v7 python3 -c "import cv2"

