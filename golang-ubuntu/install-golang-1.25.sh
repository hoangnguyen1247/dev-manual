#!/bin/bash
set -e

TARGET_VERSION=1.25.3
TARGET_FULL_VERSION=go${TARGET_VERSION}.linux-amd64

# https://go.dev/dl/
wget https://go.dev/dl/${TARGET_FULL_VERSION}.tar.gz
sudo rm -rf /usr/local/go
sudo mkdir -p /usr/local/go
# sudo tar -C /usr/local -xzf ${TARGET_FULL_VERSION}.tar.gz
sudo tar -C /usr/local/go -xzf ${TARGET_FULL_VERSION}.tar.gz --strip-components=1

# echo "export PATH=/usr/local/go/bin:\$PATH" | tee -a ~/.bashrc
# mkdir -p ~/go
# echo "export GOPATH=~/go" | tee -a ~/.bashrc
# echo "export PATH=\$GOPATH/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# go version
