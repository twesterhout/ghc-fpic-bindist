#!/bin/sh

# See https://github.com/tweag/rules_haskell/issues/481 for why we build with
# --with-system-libffi
ghcup install ghc 8.8.4
ghcup compile ghc -j $(nproc) \
    -v "8.10.7" -o "8.10.7-fpic" \
    -b "8.8.4" \
    --config $PWD/build.mk -- --disable-ld-override --with-system-libffi
