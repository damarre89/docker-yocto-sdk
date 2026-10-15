#!/bin/bash
docker load < yocto-sdk-rpi3-64.tar.gz
docker run --rm -it --user $(id -u):$(id -g) -v "$PWD":/work yocto-sdk:rpi3-64 bash