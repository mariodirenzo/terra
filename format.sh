#!/bin/bash

set -e

for f in src/*.c src/*.cpp src/*.h release/include/*/*.h tests/*.h tests/*/*.h; do
    # Skip files that are imported from external sources.
    if [[ ! $f = src/lctype.* && ! $f = src/linenoise.* && ! $f = src/lj_strscan.* && ! $f = src/lstring.* && ! $f = src/lzio.* ]]; then
        clang-format -i "$f"
    fi
done
