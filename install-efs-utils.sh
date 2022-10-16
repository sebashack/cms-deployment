#!/bin/bash

sudo apt-get update

sudo apt-get -y install binutils

git clone https://github.com/aws/efs-utils

cd efs-utils && ./build-deb.sh

sudo apt-get -y install ./build/amazon-efs-utils*deb
