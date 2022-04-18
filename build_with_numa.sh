#!/bin/sh

ghcup install ghc 8.8.4
ghcup compile ghc -j $(nproc) \
    -v "8.10.7" -o "8.10.7-fpic" \
    -b "8.8.4" \
    --config $PWD/build.mk -- --disable-ld-override
