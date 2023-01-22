#!/bin/bash

<<comment
TODO:
Pick up your trash tmp files!
comment

# UnitTestTwo

# Title: was copied over from C:\Users\treya\Desktop\gitHubRepo\0008_repoManPrivate\autoRepo_Installer_i1.0.sh
# Code by, Lance Pierson
# Treyark Media
# Website: treyark.com | Twitter: @LanceTreyark
# gitHub: https://gitHub.com/LanceTreyark

# Please enter you comit message   1.17.23 653am typo github/gitHub and it already existed make a new filename

<<comment # Multi Line Comment #
WARNING need to tell people to 
1) add ssh keys to gitHub for their terminal/server
#
This script is designed to do the following: 

Phase One
adds an alias file with 3 commands:
"hi"     This updates your system with a single command
"dude"   This initializes a new git repository with any file containing this script >> "microInit_i1.sh"
"commit" This prompts you for a commit message then commits the file you are in to gitHub.
Then checks to see if it was created.
#
Phase Two
creates a template/example repo in your ~/home directory that contains the scripts needed to 
run your "dude" & "commit" commands.
#
Phase Three
Sets up the first repo and sets up global ownership.
#
TODO:
null
comment
#-------------------------------------------------------------------- 1
#echo ""
#sleep 1
#echo "Press Enter to continue..."
#read -s -p ""
#-------------------------------------------------------------------- 0
#--------------------------PHASE ONE
#
read -p "Choose a file name for your first auto repo:  " autoRepo1
read -p "What is the remote origin for this new repository?   " gitOrigin1
read -p "What is your Git user email?  " gitEmail #lance@treyark.com
read -p "What is your Git user name?  " gitName   #LanceTreyark
read -p "Enter a file name for your Git repository root folder (or press enter for default 'gitRepo'): " GitRepoName

if [ -z "$GitRepoName" ]; then
    GitRepoName="gitRepo"
fi

echo "File name: $GitRepoName"

#-------------------------------------------------------------------- 1
echo "Add Alias commands"
sleep 1
echo "Press Enter to continue..."
read -s -p ""
#-------------------------------------------------------------------- 0
cd ~/
pwd
ls -a -1 ~/
echo ""
echo ""
# Check for existence of the Alias file if it exists add these commands
if [ -e ~/.bash_aliases ]; then
    echo "alias hi='sudo apt update && sudo apt upgrade'" >> ~/.bash_aliases
    echo "alias dude='./microInit_i1.sh'" >> ~/.bash_aliases
    echo "alias commit='git add . && ./Q_Com.sh && git push -u origin main'" >> ~/.bash_aliases
else
# If the file does not exist, create it and add these commands, later we will make it executable and add it as a current source.
    touch ~/.bash_aliases
    echo "alias hi='sudo apt update && sudo apt upgrade'" >> ~/.bash_aliases
    echo "alias dude='./microInit_i1.sh'" >> ~/.bash_aliases
    echo "alias commit='git add . && ./Q_Com.sh && git push -u origin main'" >> ~/.bash_aliases
fi
#
#-------------------------------------------------------------------- 1
echo "Curl two repository handling scripts into /tmp then cp to home new dir gitHub"
sleep 1
echo "Press Enter to continue..."
read -s -p ""
#-------------------------------------------------------------------- 0
ls -a -1 /tmp
mkdir /tmp/exampleRepo
ls -a -1 /tmp
ls -a -1 /tmp/exampleRepo
curl -o /tmp/exampleRepo/Q_Com.sh https://raw.githubusercontent.com/LanceTreyark/ExperimentalUnits/main/Q_Com.sh
ls -a -1 /tmp/exampleRepo
curl -o /tmp/exampleRepo/microInit_i1.sh https://raw.githubusercontent.com/LanceTreyark/ExperimentalUnits/main/microInit_i1.sh
ls -a -1 /tmp/exampleRepo
ls -a -1 ~/
mkdir ~/$GitRepoName
ls -a -1 ~/
ls -a -1 ~/$GitRepoName/
cp -r /tmp/exampleRepo ~/$GitRepoName/
ls -a -1 ~/$GitRepoName/
#--------------------------PHASE TWO
#
echo ""
echo ""
userID=$(id -u)
echo "User ID is $userID"
echo ""
echo ""
sleep 1
sudo chown -R $userID:$userID ~/$GitRepoName
cd ~/$GitRepoName
echo "In this Directory:"
pwd
echo "Here is a list of the contents before we make a change:"
ls -a -1
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
cp -r ~/$GitRepoName/exampleRepo ~/$GitRepoName/$autoRepo1
echo "Here is a list of the contents after the change"
ls -a -1
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
echo "For the command scripts to work, sudo will be required to make them executable"
sleep 1
echo "In this Directory:"
pwd
echo "Here is a list of the contents before we make a change:"
ls -a -1 ~/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
sudo chmod +x ~/.bash_aliases
# source the file to make the commands available in the current shell session
source ~/.bash_aliases
echo "Here is a list of the contents after the change"
ls -a -1 ~/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
echo "In this Directory:"
echo "~/$GitRepoName/exampleRepo/"
echo "Here is a list of the contents before we make a change:"
ls -a -1 ~/$GitRepoName/exampleRepo/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
sudo chmod +x ~/$GitRepoName/exampleRepo/Q_Com.sh
sudo chmod +x ~/$GitRepoName/exampleRepo/microInit_i1.sh
echo "Here is a list of the contents after the change"
ls -a -1 ~/$GitRepoName/exampleRepo/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
echo "In this Directory:"
echo "~/$GitRepoName/$autoRepo1/"
echo "Here is a list of the contents before we make a change:"
ls -a -1 ~/$GitRepoName/$autoRepo1/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
sudo chmod +x ~/$GitRepoName/$autoRepo1/Q_Com.sh
sudo chmod +x ~/$GitRepoName/$autoRepo1/microInit_i1.sh
echo "Here is a list of the contents after the change"
ls -a -1 ~/$GitRepoName/$autoRepo1/
echo ""
echo "-----------------------------------------------------------"
echo ""
sleep 1
#--------------------------PHASE THREE
#-------------------------------------------------------------------- 1
echo "Initialize $autoRepo1 and declare global git ownership"
sleep 1
# check the server for an ssh key, if one does not exist offer to make one
# ask user if the key has been added to github if not the commit will not work.
#-----------------------------------------------------------------------------
if [ -f ~/.ssh/id_rsa.pub ]; then
    cat ~/.ssh/id_rsa.pub
    read -p "Have you added this key to your Github settings? (Y/N) " response
    if [ "$response" = "N" ]; then
        echo "Please add this key to your Github settings."
    fi
else
    read -p "It appears that an ssh key has not been generated. Would you like to create one? (Y/N) " response
    if [ "$response" = "Y" ]; then
        ssh-keygen
        cat ~/.ssh/id_rsa.pub
        echo "Please add this key to your Github settings."
    else
        echo "If you dont add the ssh-key the communication with GitHub will fail. are you shure you want to skip this?"
        read -p "Enter (Y/N): " choice
        if [ "$choice" = "N" ]; then
            ssh-keygen
            cat ~/.ssh/id_rsa.pub
            echo "Please add this key to your Github settings."
        fi
    fi
fi
#-----------------------------------------------------------------------------
echo "Press Enter to continue..."
read -s -p ""
#-------------------------------------------------------------------- 0
cd ~/$GitRepoName/$autoRepo1
pwd
git config --global user.email "$gitEmail"
git config --global user.name "$gitName"
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin $gitOrigin1
git push -u origin main
sleep 1
echo "The script has concluded"
cd ~/
pwd
