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
dnf install $1 -y
if [ $1 -eq 0 ]
then
    echo "The installation of $1 is SUCCESS"
else
    echo "The isntallation of $1 is FAILED"
    exit 1
fi
}

ID_VALIDATION 
installation_list=("mysql" "nginx" "nodejs" "mongodb")
for i in $@
do
    echo "$i"
    dnf list installed $i
    if [ $? -eq 0 ]
    then
        echo "$i is installed already"
    else
        INSTALLATION $i
    fi
done