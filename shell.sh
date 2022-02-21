#! /bin/bash
pwd #To see what directory we are in!
ifconfig | grep inet #To find the ip address
sudo cat  /var/log/apache2/apache2.logs #This command will give us the logs of apache server directly
#The following script from now on will be done to automate user addition and some modifications for user permissions

echo "Enter Your Username:"
read username
sudo useradd -m $username 
sudo passwd $username
#User will be created with a password and username
echo "Do you want to be added in the group?Please enter yes or no"
read n
yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
  echo "Type the name of the group you want to make?"
  read grupnem 
  sudo groupadd $grupnem
  sudo usermod -s -G $grupnem $username
  echo "Congratulations you are added to a group!"
else
  echo "You are not added to any group."
fi
exit























