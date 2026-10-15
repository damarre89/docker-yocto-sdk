#!/bin/bash
docker buildx build --platform linux/amd64 -t yocto-sdk:rpi3-64 --load .