#!/bin/sh
set -e

# Build containers
podman build -t libtiff-base ./base
podman build -t libtiff-static-analysis ./static-analysis

# Run static analysis
podman run --rm -v ./static-analysis/reports:/reports libtiff-static-analysis

echo "Report saved to static-analysis/reports"