#!/bin/bash
#v.012123
#3
gitEmail=$(cat /tmp/vArs/varGitEmail.txt)
#4
gitName=$(cat /tmp/vArs/varGitName.txt)
#
read -p "What is the remote origin for this new repository?   " gitOrigin1   
sudo git init
# define explicit ownership call varables
sudo git config --global user.name "$gitName"
sudo git config --global user.email $gitEmail
sudo git add .
sudo git commit -m "first commit"
sudo git branch -M main
sudo git remote add origin $gitOrigin1
sudo git push -u origin main