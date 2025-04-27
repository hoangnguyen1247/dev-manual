#!/bin/bash
set -e

TARGET_VERSION=v20.5.1
TARGET_FULL_VERSION=node-v20.5.1-linux-x64

wget https://nodejs.org/dist/${TARGET_VERSION}/${TARGET_FULL_VERSION}.tar.xz
sudo rm -rf /usr/local/node
sudo tar -C /usr/local -xf ${TARGET_FULL_VERSION}.tar.xz
sudo mv /usr/local/${TARGET_FULL_VERSION} /usr/local/node
echo "export PATH=/usr/local/node/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# node --version
