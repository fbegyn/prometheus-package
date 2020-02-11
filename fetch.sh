#!/bin/env bash
curl -fSL -o "./prometheus-$1.$2.tar.gz" \
  "https://github.com/prometheus/prometheus/releases/download/v$1/prometheus-$1.$2.tar.gz"

tar xzvf ./prometheus-$1.linux-amd64.tar.gz

# get binaries
mkdir ./bin
cp ./prometheus-$1.$2/prometheus ./bin/
cp ./prometheus-$1.$2/promtool ./bin/
cp ./prometheus-$1.$2/tsdb ./bin/

# Cp config files
cp -r ./prometheus-$1.$2/consoles ./
cp -r ./prometheus-$1.$2/console_libraries ./
cp ./prometheus-$1.$2/prometheus.yml ./
