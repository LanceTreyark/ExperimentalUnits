#!/bin/bash
#v.02023
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
sudo git commit --amend --reset-author
echo "sudo git commit --amend --reset-author"
echo ""
echo "* * *"
echo ""
sleep 1
echo "Script has concluded."
sleep 1
<<comment
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author
comment