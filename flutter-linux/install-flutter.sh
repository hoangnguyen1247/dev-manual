#!/bin/bash -v
set -e

TARGET_VERSION=3.16.7
TARGET_FULL_VERSION=flutter_linux_3.16.7-stable

# sudo apt install bash curl file git mkdir rm unzip which xz-utils zip

# wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/${TARGET_FULL_VERSION}.tar.xz
rm -rf ~/flutter && tar -C ~/ -xf ${TARGET_FULL_VERSION}.tar.xz
# echo "export PATH=~/flutter/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# flutter --version
# flutter precache
# flutter doctor
