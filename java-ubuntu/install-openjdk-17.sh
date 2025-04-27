#!/bin/bash
set -e

TARGET_VERSION=17.0.2
TARGET_FULL_VERSION=openjdk-${TARGET_VERSION}_linux-x64_bin

# https://jdk.java.net/archive/
wget https://download.java.net/java/GA/jdk${TARGET_VERSION}/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/${TARGET_FULL_VERSION}.tar.gz
sudo rm -rf /usr/local/java
# sudo tar -C /usr/local -xzf ${TARGET_FULL_VERSION}.tar.gz
# sudo mv /usr/local/${TARGET_FULL_VERSION} /usr/local/java
sudo mkdir /usr/local/java && sudo chown ${USER}:${USER} /usr/local/java
sudo tar -C /usr/local/java -xvzf ${TARGET_FULL_VERSION}.tar.gz --strip-component 1
echo "export PATH=/usr/local/java/bin:\$PATH" | tee -a ~/.bashrc

# source ~/.bashrc
# java --version
