#! /bin/bash 
apt-get update 

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# check fingerprint
sudo apt-key fingerprint 0EBFCD88

# add docker into repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# update repository
sudo apt-get update

# install docker-CE
sudo apt-get install docker-ce
