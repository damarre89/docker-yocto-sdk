#!/bin/bash
docker run --rm -v "$PWD":/work yocto-sdk:rpi3-64 bash -c 'cd /work && echo "#include <stdio.h>
int main(){puts(\"Hello world from SDK\");return 0;}" > t.c && $CC t.c -o helloworld'
scp helloworld root@192.168.0.10:/tmp/
ssh root@192.168.0.10 /tmp/helloworld
rm -f t.c
readelf -h helloworld
rm -f helloworld