#!/bin/bash
# This version works just with arithmetic functions, multiplying numbers by 100
echo -e "\e[1;95m  ___   _   _                                                         _               
 | __| (_) | |  ___     __   ___   _ __    _ __   __ _   _ _   __ _  | |_   ___   _ _ 
 | _|  | | | | / -_)   / _| / _ \ | '  \  | '_ \ / _\` | | '_| / _\` | |  _| / _ \ | '_|
 |_|   |_| |_| \___|   \__| \___/ |_|_|_| | .__/ \__,_| |_|   \__,_|  \__| \___/ |_|  
                                          |_| @gitblanc - Aug 2022\e[0m"

# Max value that the new file can differ of the previous one
MAX_VALUE=8192
DATE=$(date +%Y%m%d%H%m)
LOCAL_USER=$USER

echo ""
# Necessary tool to automate login on ssh and sftp
sudo apt-get install sshpass
echo ""
read -p "Please, introduce the ip address of the remote host: " IP_ADDR
read -p "Please, enter your username: " USERNAME
# The password is not visible
read -sp "Enter your password: " PASSWD
echo ""
echo "Uploading special version ebroker Partial Remittances..."
# Here we establish the sftp connection
# First we rename the old version (change the route if needed)
# Then we load the new version (change the route if needed)
sshpass -p $PASSWD sftp -oHostKeyAlgorithms=+ssh-dss  $USERNAME@$IP_ADDR <<EOF
rename /home/$USERNAME/prueba.txz /home/$USERNAME/prueba.txz.bak$DATE
put /home/$LOCAL_USER/Documents/nuevaversion.txz /home/$USERNAME/
EOF

SIZE1=$(sshpass -p $PASSWD ssh -oHostKeyAlgorithms=+ssh-dss $USERNAME@$IP_ADDR "echo \$(ls -l /home/$USERNAME/nuevaversion.txz | awk '{print \$5}') ")
SIZE2=$(sshpass -p $PASSWD ssh -oHostKeyAlgorithms=+ssh-dss $USERNAME@$IP_ADDR "echo \$(ls -l /home/$USERNAME/prueba.txz.bak$DATE | awk '{print \$5}') ")

echo -e "\e[1;34mSize of the new version = $SIZE1\e[0m"
echo -e "\e[1;34mSize of the old version = $SIZE2\e[0m"

# Difference between two files
SIZE=$(($SIZE1-$SIZE2))

if [ $SIZE > $MAX_VALUE ] ; then
	echo -e "\e[1;31mDifference = $SIZE\n\e[0m"
	echo -e "\e[1;31mError, the files differ more than $MAX_VALUE bits\e[0m"
	echo -e "\e[1;31mQuitting...\e[0m"
	exit
fi
echo -e "\e[1;32mDifference = $SIZE\e[0m"
echo -e "\e[1;32mEverything correct.\e[0m"
exit
