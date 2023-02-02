#!/bin/bash
#v.02023
# nano chownInit_v0.0.sh
# sudo chmod +x chownInit_v0.0.sh
# ./chownInit_v0.0.sh
# cp /home/repomand/chownInit_v0.0.sh /home/repomand/gitRepo/exampleRepo/
#3
gitEmail=$(cat /tmp/vArs/varGitEmail.txt)
#4
gitName=$(cat /tmp/vArs/varGitName.txt)
#
echo "Script is live"
echo ""
sleep 1
echo "Updating git ownership"
echo ""
sleep 1
echo "Calling variables..."
echo ""
echo "gitEmail=$(cat /tmp/vArs/varGitEmail.txt)"
echo "gitName=$(cat /tmp/vArs/varGitName.txt)"
sleep 1
echo ""
# define explicit ownership call varables
sudo git config --global user.name "$gitName"
echo "sudo git config --global user.name "$gitName""
echo ""
echo "*"
echo ""
sudo git config --global user.email $gitEmail
echo "sudo git config --global user.email $gitEmail"
echo ""
echo "* *"
echo ""
# sudo git commit --amend --reset-author
# echo "sudo git commit --amend --reset-author"
echo ""
echo "* * *"
echo ""
sleep 1
echo "Script has concluded."
sleep 1
