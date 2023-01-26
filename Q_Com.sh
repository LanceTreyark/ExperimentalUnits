#!/bin/bash
#v.012623
date_time="$(date +"%m.%d.%y %I:%M%p")"
read -p "Please enter your commit message   " var_commit
echo " "
git commit -m "$date_time $var_commit"
echo "*  *"
echo "*  *  *"
sleep 1
echo "Script Complete"

