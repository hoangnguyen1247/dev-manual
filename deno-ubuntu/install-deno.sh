#!/bin/bash
set -e

TARGET_VERSION=v2.5.6

# https://github.com/denoland/deno/releases/latest/download/deno-${PLATFORM}.zip
# https://github.com/denoland/deno/releases/download/${DENO_VERSION}/deno-${PLATFORM}.zip
curl -L https://github.com/denoland/deno/releases/latest/download/deno-x86_64-unknown-linux-gnu.zip -o deno.zip
# curl -L https://github.com/denoland/deno/releases/download/${VERSION}/deno-x86_64-unknown-linux-gnu.zip -o deno.zip
unzip deno.zip

sudo mv ./deno /usr/bin/

rm -rf deno.zip

# deno --version
