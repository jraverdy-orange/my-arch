#!/bin/sh
export VERSION=1.0.0

echo Building my-arch:${VERSION}

docker build --no-cache -t my-arch:${VERSION} .

echo Pushing last version on docker-hub
docker tag my-arch:${VERSION} jraverdyorange/my-arch:${VERSION}
docker tag jraverdyorange/my-arch:${VERSION} jraverdyorange/my-arch:latest
docker push jraverdyorange/my-arch
