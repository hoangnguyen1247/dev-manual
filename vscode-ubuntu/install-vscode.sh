#!/bin/bash
set -e

TARGET_VERSION=1.106.0

# wget -O vscode.tar.gz -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64-archive'
# wget -O vscode-${TARGET_VERSION}.tar.gz https://update.code.visualstudio.com/${TARGET_VERSION}/linux-x64/stable 
# wget https://code.visualstudio.com/sha/download?build=stable&os=linux-x64
#sudo rm -rf /usr/local/code 
#sudo mkdir -p /usr/local/code
#sudo tar -C /usr/local/code -xzf vscode-${TARGET_VERSION}.tar.gz --strip-components=1
# echo "export PATH=/usr/local/code/bin:\$PATH" | tee -a ~/.bashrc
wget -O code.deb "https://update.code.visualstudio.com/latest/linux-deb-x64/stable"

# source ~/.bashrc
# node --version
