TAG_DATE=$(shell date +%Y%m%d)

all: build test push

amd64: build-amd64 test-amd64 push-amd64
arm32v7: build-arm32v7 test-arm32v7 push-arm32v7
arm64v8: build-arm64v8 test-arm64v8 push-arm64v8

build: build-amd64 build-arm64v8 build-arm32v7

build-amd64:
	docker build --build-arg IMAGE_ARCH=amd64 \
		-t inyoursaas/python3-numpy:amd64 \
		-t inyoursaas/python3-numpy:amd64-${TAG_DATE} .

build-arm64v8:
	docker build --build-arg IMAGE_ARCH=arm64v8 \
		-t inyoursaas/python3-numpy:arm64v8 \
		-t inyoursaas/python3-numpy:arm64v8-${TAG_DATE} .

build-arm32v7:
	docker build --build-arg IMAGE_ARCH=arm32v7 \
		-t inyoursaas/python3-numpy:arm32v7 \
		-t inyoursaas/python3-numpy:arm32v7-${TAG_DATE} .

push: push-amd64 push-arm64v8 push-arm32v7

push-amd64:
	docker push inyoursaas/python3-numpy:amd64
	docker push inyoursaas/python3-numpy:amd64-${TAG_DATE}

push-arm64v8:
	docker push inyoursaas/python3-numpy:arm64v8
	docker push inyoursaas/python3-numpy:arm64v8-${TAG_DATE}

push-arm32v7:
	docker push inyoursaas/python3-numpy:arm32v7
	docker push inyoursaas/python3-numpy:arm32v7-${TAG_DATE}

test: test-amd64 test-arm64v8 test-arm32v7

test-amd64:
	docker run -it --rm inyoursaas/python3-numpy:amd64 python3 -c "import numpy"

test-arm64v8:
	docker run -it --rm inyoursaas/python3-numpy:arm64v8 python3 -c "import numpy"

test-arm32v7:
	docker run -it --rm inyoursaas/python3-numpy:arm32v7 python3 -c "import numpy"

