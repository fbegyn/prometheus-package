#! /usr/bin/env bash
curl -fSL -o "./prometheus-$1.linux-$2.tar.gz" \
  "https://github.com/prometheus/prometheus/releases/download/v$1/prometheus-$1.linux-$2.tar.gz"
tar xzvf ./prometheus-$1.linux-$2.tar.gz
cp -r ./prometheus-$1.linux-$2/* ./

