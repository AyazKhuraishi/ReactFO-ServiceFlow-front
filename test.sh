#!/bin/bash

docker build -f Dockerfile.multi-arch . -t kubeshark/front:test-amd64 --build-arg TARGETARCH=amd64 && \
	docker push kubeshark/front:test-amd64

docker build -f Dockerfile.multi-arch . -t kubeshark/front:test-arm64v8 --build-arg TARGETARCH=arm64v8 && \
	docker push kubeshark/front:test-arm64v8
