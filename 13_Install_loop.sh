#!/bin/bash

id_check=$(id -u)
#Validate function to check if the script is running with root or not
ID_VALIDATION(){
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation"
else
    echo "You are Not in ROOT please switch to ROOT user"
    exit 1
fi
}
#Installation function to install
INSTALLATION(){
if [ $1 -eq 0 ]
then
    echo "The installation of $2 is SUCCESS"
else
    echo "The isntallation of $2 is FAILED"
    exit 1
fi
}

ID_VALIDATION 
installation_list=("mysql" "nginx" "nodejs" "httpd")
for i in ${installation_list[@]}
do
    dnf list installed $i
    if [ $? -eq 0 ]
    then
        echo "$i is installed already"
    else
        dnf install $i -y
        INSTALLATION $? $i
    fi
done