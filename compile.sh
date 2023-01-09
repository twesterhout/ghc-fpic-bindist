#!/bin/sh

GHC_BOOT_VERSION=9.0.2 # 9.0.2 # 8.10.7
GHC_VERSION=9.2.5 # 9.0.2

# See https://github.com/tweag/rules_haskell/issues/481 for why we build with
# --with-system-libffi
ghcup install ghc $GHC_BOOT_VERSION
ghcup compile ghc -j $(nproc) \
    -v "$GHC_VERSION" -o "${GHC_VERSION}-fpic" \
    -b "$GHC_BOOT_VERSION" \
    --config $PWD/build.mk \
    -- \
    --disable-ld-override \
    --with-system-libffi \
    --disable-numa
