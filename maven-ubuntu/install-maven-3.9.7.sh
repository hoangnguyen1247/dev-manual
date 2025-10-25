#!/bin/bash

TARGET_VERSION=3.9.7
TARGET_FULL_VERSION=apache-maven-${TARGET_VERSION}-bin

wget https://archive.apache.org/dist/maven/maven-3/3.9.7/binaries/apache-maven-3.9.7-bin.tar.gz
mkdir -p ~/maven
tar -C ~/maven -xvzf ${TARGET_FULL_VERSION}.tar.gz --strip-component 1
echo "export PATH=~/maven/bin:\$PATH" | tee -a ~/.bashrc
