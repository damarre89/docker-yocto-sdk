#!/bin/bash
docker run --rm yocto-sdk:rpi3-64 bash -c 'echo $CC; cd /tmp && echo "int main(){return 0;}" > t.c && $CC t.c -o t && file t'