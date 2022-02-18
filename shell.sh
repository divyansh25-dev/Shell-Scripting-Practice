#! /bin/bash
pwd #To see what directory we are in!
ifconfig | grep inet #To find the ip address
sudo cat  /var/log/apache2/apache2.logs #This command will give us the logs of apache server directly
#The following script from now on will be done to automate user addition and some modifications for user permissions

echo "Enter Your Username:"
read username
sudo useradd -m $username 


