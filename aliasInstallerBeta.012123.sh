#!/bin/bash
<<comment
 Title: PhaseFourUnitTest.sh
 Repo: https://github.com/LanceTreyark/UnitTesting
 Date: 1.20.23
 Time: 502pm

 From "gitAlias.sh" on laptop
 Original file written on the laptop 1.20.23 1147am
 Had to run "sudo sed -i -e 's/\r$//' phaseOneUnitTestCp.sh (to Remove ^M)"
 Purpose: Installed Git on Paradigm/YOGA/Lenovo Laptop by running 
 PhaseOneUnitTest.sh from github on 1.20.23 10am
 The script was amended to include:
    sudo apt install curl -y
 I needed to:
 1-Clone the repo to this machine (PhaseThreeUnitTest)
 2-Install Alias Commands (This Unit "PhaseFourUnitTest.sh")
 so those two files mentioned above were modified 1.20.23.
comment
read -p "What is your Git user email?  " gitEmail 
read -p "What is your Git user name?  " gitName   
echo "Add Alias commands & set git global values"
sleep 1
git config --global user.email "$gitEmail"
git config --global user.name "$gitName"
sleep 1
# check for global git values print them, if none ask and set them

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
sleep 1
echo "Activate the File"
sudo chmod +x ~/.bash_aliases 
sleep 1
echo "make the Alias commands available in the current terminal session"
sleep 1
# I had to run this command twice.
source ~/.bash_aliases
sleep 1
echo "The script has concluded."
sleep 2
