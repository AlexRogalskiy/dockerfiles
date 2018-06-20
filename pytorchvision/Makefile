all: build test push

arm32v7: build-arm32v7 test-arm32v7 push-arm32v7

build: build-arm64v8 build-arm32v7

build-arm64v8:
	docker build -f arm64v8.Dockerfile -t inyoursaas/pytorchvision:arm64v8 .

build-arm32v7:
	docker build -f arm32v7.Dockerfile -t inyoursaas/pytorchvision:arm32v7 .

push: push-arm64v8 push-arm32v7

push-arm64v8:
	docker push inyoursaas/pytorchvision:arm64v8

push-arm32v7:
	docker push inyoursaas/pytorchvision:arm32v7

test: test-arm64v8 test-arm32v7

test-arm64v8:
	docker run -it --rm inyoursaas/pytorchvision:arm64v8 python3 -c "import torchvision"

test-arm32v7:
	docker run -it --rm inyoursaas/pytorchvision:arm32v7 python3 -c "import torchvision"

