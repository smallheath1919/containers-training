#!/bin/bash
for i in 1 2 3; do
  sed -i "s/number/$i/g" Dockerfile;
  docker build -t testimage:v$i .;
  sed -i "s/$i/number/g" Dockerfile;
done
echo "================"
docker images

