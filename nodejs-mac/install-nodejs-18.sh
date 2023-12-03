#!/bin/bash
set -e

TARGET_VERSION=v18.17.1
TARGET_FULL_VERSION=node-v18.17.1-darwin-x64

# https://nodejs.org/dist/
wget https://nodejs.org/dist/${TARGET_VERSION}/${TARGET_FULL_VERSION}.tar.xz
sudo rm -rf /usr/local/node && sudo tar -C /usr/local -xf ${TARGET_FULL_VERSION}.tar.xz
sudo mv /usr/local/${TARGET_FULL_VERSION} /usr/local/node
echo "export PATH=/usr/local/node/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# node --version
