#!/bin/sh
set -e

# Build containers
podman build -t libtiff-base ./base
podman build -t libtiff-fuzzing ./fuzzing

# Run fuzzing
podman run --rm -it \
        -v ./fuzzing/output/:/workspace/libtiff/output/ \
        libtiff-fuzzing

echo "Results saved to fuzzing/output"