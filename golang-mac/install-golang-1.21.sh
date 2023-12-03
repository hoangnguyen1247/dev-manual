#!/bin/bash
set -e

TARGET_VERSION=go1.21.2.darwin-amd64

# https://go.dev/dl/
wget https://go.dev/dl/${TARGET_VERSION}.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${TARGET_VERSION}.tar.gz
echo "export PATH=/usr/local/go/bin:\$PATH" | tee -a ~/.bashrc

# mkdir -p ~/go
# echo "export GOPATH=~/go" | tee -a ~/.bashrc
# echo "export PATH=\$GOPATH/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# go version
