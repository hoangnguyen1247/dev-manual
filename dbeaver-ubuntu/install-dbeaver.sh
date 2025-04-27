#!/bin/bash
set -e

TARGET_VERSION=25.0.2
TARGET_FULL_VERSION=dbeaver-ce_${TARGET_VERSION}_amd64

# https://dbeaver.io/files
wget https://dbeaver.io/files/${TARGET_VERSION}/${TARGET_FULL_VERSION}.deb
sudo apt install ./${TARGET_FULL_VERSION}.deb

# wget https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64-nojdk.tar.gz

