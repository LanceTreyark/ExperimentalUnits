#!/bin/bash
<<comment
TODO:
Pick up your trash tmp files!
comment
# Installation Phase
# Install Git
#
# Start Script:
echo "Phase One Unit Test has started, "
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "mkdir /tmp/gitHub " 
#Remove this tmp file once phase one is successfully concluded
mkdir /tmp/gitHub
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo curl -o /tmp/gitHub/git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.39.0.tar.gz "
sudo curl -o /tmp/gitHub/git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.39.0.tar.gz
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "cd /tmp/gitHub && sudo tar -xf git.tar.gz && sudo rm -r git.tar.gz && cd -"
cd /tmp/gitHub && sudo tar -xf git.tar.gz && sudo rm -r git.tar.gz && cd -
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "cp -r /tmp/gitHub ~/"
cp -r /tmp/gitHub ~/
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install libcurl4-openssl-dev -y"
sudo apt install libcurl4-openssl-dev -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install libexpat1-dev -y"
sudo apt install libexpat1-dev -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install gettext tcl -y"
sudo apt install gettext tcl -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install make -y"
sudo apt install make -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install gcc -y"
sudo apt install gcc -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install libssl-dev -y"
sudo apt install libssl-dev -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "sudo apt install zlib1g-dev -y"
sudo apt install zlib1g-dev -y
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "cd ~/gitHub/git-2.39.0" 
cd ~/gitHub/git-2.39.0
pwd
#
#echo "Press Enter to continue..."
#read -s -p ""
#
#echo "sudo mkdir -p /usr/local/share/gitweb"  # I don't think this is needed If using sudo make
#sudo mkdir -p /usr/local/share/gitweb
#
#echo "Press Enter to continue..."
#read -s -p ""
#
#
echo "sudo make prefix=/usr/local all" 
echo "Press Enter to continue..."
read -s -p ""
sudo make prefix=/usr/local all
#
#
#echo "Press Enter to continue..."
#read -s -p ""
#
#
echo "sudo make prefix=/usr/local install"
echo "Press Enter to continue..."
read -s -p ""
sudo make prefix=/usr/local install
#
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "git --version"
git --version
#
#echo "Press Enter to continue..."
#read -s -p ""
#
echo "End of script."
##
#echo "#ADD_CODE_HERE"
##ADD_CODE_HERE
##
#echo "Press Enter to continue..."
#read -s -p ""
##

