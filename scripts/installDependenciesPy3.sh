#!/bin/bash
# NVIDIA Jetson TX2
# Install TensorFlow dependencies
# Install Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-arm64
export PATH=$PATH:$JAVA_HOME/bin
# choose java 8 as default version
sudo update-alternatives --config java

# Make sure python3 is linked to python3.7
# Install other dependencies
sudo apt-get install zip unzip autoconf automake libtool curl zlib1g-dev maven -y
sudo pip3 install keras_applications==1.0.4 --no-deps
sudo pip3 install keras_preprocessing==1.0.2 --no-deps
# Install Python 3.x
sudo apt-get install python3-numpy swig python3-dev python3-pip python3-wheel -y
