#!/bin/bash
# PhaseZeroUnitTest.sh
# Server Initialization Phase Zero
<<comment
TODO:
0A) PreScript -Setup new user
0B) copy remote public key to new dir authorized
01A) This script, 
01B)
01C)
1) ! Add your keys to a new non root user authorized users file
2) DONE (in githubScript) ! Once you are using non root user you need to create ssh keys and display them & prompt the user to copy and paste them into github.
3) DONE ! save the server IP to a variable called $myIP
4) DONE ! Set the hostname, save the hostname to a variable called $myHostName
# Pick up your trash tmp files!
comment
#
# Set Hostname & Assign to a variable:
read -p "Enter a hostname you want to use for this server:  " $myHostname
sudo hostname $myHostName
hostName=$(hostname)
echo "The Hostname for this server is set to $hostName"
# Assign IP to variable:
myIPv4=$(ip addr show | awk '{if (match($2,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/)) {print $2}}' | head -2 | tail -1)
cat >/tmp/ipSort3r.txt <<EOF
$myIPv4
EOF
myIP=$(awk -F/ '{print $1}' /tmp/ipSort3r.txt) 
sudo rm -r /tmp/ipSort3r.txt
echo "The IP address for this server is: $myIP"
# Add Host data to the end of hosts file:
sudo echo "$myIP $hostName" >> /etc/hosts    


<<comment
For "1) ! Add your keys to a new non root user authorized users file"
Here's what I'm thinking.
Run a script as sudo then finish after dealing with the keys.
the rest of this will be done as the non root user, we can usealias commands for "runProcess1" and "runProcess2"
comment