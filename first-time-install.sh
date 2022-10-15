#!/bin/bash

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

sudo apt-cache policy docker-ce

sudo apt install -y docker-ce

egrep -i "^docker" /etc/group;
if [ $? -eq 0 ]; then
    echo "Group docker exists"
    sudo usermod -aG docker $USER
else
    sudo groupadd docker
    sudo usermod -aG docker $USER
fi

#Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
