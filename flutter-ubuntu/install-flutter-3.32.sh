#!/bin/bash -v
set -e

TARGET_VERSION=3.32.0
TARGET_FULL_VERSION=flutter_linux_${TARGET_VERSION}-stable

# sudo apt install bash curl file git mkdir rm unzip which xz-utils zip

# https://storage.googleapis.com/flutter_infra_release/releases/stable/linux
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/${TARGET_FULL_VERSION}.tar.xz
sudo rm -rf /usr/local/flutter
sudo mkdir -p /usr/local/flutter
# sudo tar -C /usr/local -xf ${TARGET_FULL_VERSION}.tar.xz
sudo tar -C /usr/local/flutter -xf ${TARGET_FULL_VERSION}.tar.xz --strip-components=1
echo "export PATH=~/flutter/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# flutter --version
# flutter precache
# flutter doctor
