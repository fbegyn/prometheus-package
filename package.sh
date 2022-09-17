#! /usr/bin/env bash
./fetch.sh $1 $2

sed "s/vx.y.z/v$1/g" ./nfpm.yaml > ./nfpm-temp.yaml

nfpm pkg --config="nfpm-temp.yaml" --packager deb
nfpm pkg --config="nfpm-temp.yaml" --packager rpm

rm -rf ./prometheus ./promtool ./consoles ./console_libraries ./prometheus.yml \
   ./prometheus-$1.linux-$2 ./prometheus-$1.linux-$2.tar.gz ./LICENSE ./NOTICE \
   ./nfpm-temp.yaml
