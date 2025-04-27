#!/bin/bash
set -e

TARGET_VERSION=22.0.2
TARGET_FULL_VERSION=openjdk-${TARGET_VERSION}_linux-x64_bin

# https://jdk.java.net/archive/
wget https://download.java.net/java/GA/jdk${TARGET_VERSION}/c9ecb94cd31b495da20a27d4581645e8/9/GPL/${TARGET_FULL_VERSION}.tar.gz
sudo rm -rf /usr/local/java
# sudo tar -C /usr/local -xzf ${TARGET_FULL_VERSION}.tar.gz
# sudo mv /usr/local/${TARGET_FULL_VERSION} /usr/local/java
sudo mkdir /usr/local/java && sudo chown ${USER}:${USER} /usr/local/java
sudo tar -C /usr/local/java -xvzf ${TARGET_FULL_VERSION}.tar.gz --strip-component 1
echo "export PATH=/usr/local/java/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# java --version
