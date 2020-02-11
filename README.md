# Prometheus package

This repo is designed to package prometehus based upon the Github releases.
The package can be built with the following command:

```
./package.sh <prometheus version> <arch>
```

This command will build a `prometheus.deb`.

## TODO

Figure out a way to automatically uptake the version number in `nfpm.yaml` to match the downloaded
version.
