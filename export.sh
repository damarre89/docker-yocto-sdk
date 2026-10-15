#!/bin/bash
docker save yocto-sdk:rpi3-64 | gzip > yocto-sdk-rpi3-64.tar.gz
ls -lh yocto-sdk-rpi3-64.tar.gz