#!/bin/bash
#v.012123
read -p "Please enter you commit message   " var_commit
echo "* "
git commit -m "$var_commit"
echo "*  *"
echo "*  *  *"
sleep 1
echo "Script Complete"
