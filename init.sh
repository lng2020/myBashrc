#!/bin/bash

#Configure Git
echo "Input your Git user.name"
read GIT_USER_NAME
echo "Input your Git user.email"
read GIT_USER_EMAIL

export GITHUB_TOKEN=$(cat ~/token.txt)

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global core.editor "vim"

sudo apt update 

#Install download tools
sudo apt install wget
sudo apt install curl

#Install build core
sudo apt install build-essential cmake vim-nox python3-dev

#Install Java
sudo apt install default-jdk default-jdk-doc default-jre default-jre-headless -y &&
update-alternatives --display java

#Install Python
sudo apt install python3
sudo apt install python-is-python3
sudo apt install python3-pip

#Install Mysql server and client
sudo apt install mysql-server

#Install nodejs
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - && sudo apt-get install -y nodejs
sudo npm install -g n
sudo n stable

#Install c# core 
sudo apt install mono-complete

#Install golang
sudo apt install golang

#Install utilities 
sudo apt install tmux
sudo apt install vim
sudo apt install net-tools
sudo apt install fd-find
sudo apt install ripgrep
sudo npm install -g tldr
sudo  tldr --update 

#Install vscode 
sudo snap install --classic code

cp bashrc ../.bashrc
source ../.bashrc

cp vimrc ../.vimrc



