#!/bin/bash
set -e

TARGET_VERSION=v1.1.5

curl -L https://github.com/oven-sh/bun/releases/download/bun-${TARGET_VERSION}/bun-linux-x64.zip -o bun.zip
unzip bun.zip

sudo mv ./bun-linux-x64/bun /usr/bin/

rm -rf bun-linux-x64 bun.zip

# bun --version
