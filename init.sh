#!/bin/bash

#Configure Git
echo "Input your Git user.name"
read GIT_USER_NAME
echo "Input your Git user.email"
read GIT_USER_EMAIL

export GITHUB_TOKEN=$(cat ../token.txt)

sudo apt update 

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL

#Install Java
sudo apt install default-jdk default-jdk-doc default-jre default-jre-headless -y &&
update-alternatives --display java

#Install Mysql server and client
sudo apt install -y mysql-server

#Install nodejs
sudo apt install -y nodejs npm

#Install utilities 
sudo apt install -y tmux
sudo apt install -y vim
sudo apt install -y net-tools

#Install vscode 
sudo snap install --classic code



