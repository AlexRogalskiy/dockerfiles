all: build test push

build: build-arm64v8 build-arm32v7

build-arm64v8:
	docker build -f arm64v8.Dockerfile -t inyoursaas/pytorch:arm64v8 .

build-arm32v7:
	docker build -f arm32v7.Dockerfile -t inyoursaas/pytorch:arm32v7 .

push: push-arm64v8 push-arm32v7

push-arm64v8:
	docker push inyoursaas/pytorch:arm64v8

push-arm32v7:
	docker push inyoursaas/pytorch:arm32v7

test: test-arm64v8 test-arm32v7

test-arm64v8:
	docker run -it --rm inyoursaas/pytorch:arm64v8 python3 -c "import torch"

test-arm32v7:
	docker run -it --rm inyoursaas/pytorch:arm32v7 python3 -c "import torch"

