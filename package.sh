#!/bin/env bash

./fetch.sh $1 $2

sed -i "s/vx.y.z/v$1/g" ./nfpm.yaml

nfpm pkg --target prometheus-$1.$2.deb

rm -rf ./bin
rm -rf ./consoles
rm -rf ./console_libraries
rm -rf ./prometheus.yml

rm -rf ./prometheus-$1.$2.tar.gz
rm -rf ./prometheus-$1.$2
