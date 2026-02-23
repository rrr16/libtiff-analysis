#!/bin/sh
set -e

PATCH_DIR=/workspace/libtiff/alt/patches

if [ -d "$PATCH_DIR" ] && [ -n "$(ls -A "$PATCH_DIR")" ]; then
    for patch in "$PATCH_DIR"/*.patch; do
        if [ -f "$patch" ]; then
            echo "Applying $patch"
            patch -p1 < "$patch"
        fi
    done
else
    echo "No patches found in $PATCH_DIR"
fi