#!/bin/bash
# Q_Com.sh 
# Add this .sh file to any file containing .git
# v.012623
date_time="$(date +"%m.%d.%y %I:%M%p")"
#read -p "(optional) Enter an additional commit message   " var_commit
echo " "
#git commit -m "$date_time $var_commit"
git commit -m "$date_time"
echo "*  *"
echo "*  *  *"
sleep 1
echo "Script Complete"
<<comment
To create a single word command "commit" that runs:
...
git add . 
./Q_Com.sh # This script
git commit -m "$date_time $var_commit"
git push -u origin main
...
Where the Q_Com.sh script automatically adds date & time with the option for an additional comment 
within the 'git commit -m "" ' command
...
curl -o /tmp/Q_Com.sh https://raw.githubusercontent.com/LanceTreyark/ExperimentalUnits/main/Q_Com.sh
cp /tmp/Q_Com.sh ~/destination_file_here
sudo chmod +x ~/destination_file_here/Q_Com.sh
touch ~/.bash_aliases
echo 'alias commit="git add . && ./Q_Com.sh && git push -u origin main"' >> ~/.bash_aliases
sudo chmod +x ~/.bash_aliases
comment

