#!/bin/bash
set -e

mkdir -p ~/android-sdk/cmdline-tools
cd ~/android-sdk/cmdline-tools

# https://dl.google.com/android/repository
wget https://dl.google.com/android/repository/commandlinetools-linux-15859902_latest.zip
unzip commandlinetools-linux-15859902_latest.zip

mv cmdline-tools latest

# echo 'export ANDROID_HOME=$HOME/android-sdk' >> ~/.bashrc
# echo 'export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH' >> ~/.bashrc
# source ~/.bashrc
