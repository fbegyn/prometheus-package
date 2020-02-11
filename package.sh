#!/bin/env bash

./fetch.sh $1 $2

nfpm pkg --target prometheus-$1.$2.deb

rm -rf ./bin
rm -rf ./consoles
rm -rf ./console_libraries
rm -rf ./prometheus.yml

rm -rf ./prometheus-$1.$2.tar.gz
rm -rf ./prometheus-$1.$2
