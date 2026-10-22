#!/bin/bash

id_check=$(id -u)
ID_VALIDATION(){
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation"
else
    echo "You are Not in ROOT please switch to ROOT user"
    exit 1
fi
}

INSTALLATION(){
dnf install mysql -y
if [ $? -eq 0 ]
then
    echo "The installation is SUCCESS"
else
    echo "The isntallation is FAILED"
    exit 1
fi
}
ID_VALIDATION 

dnf list installed mysql
if [ $? -eq 0 ]
then
    echo "mysql is installed already"
else
    INSTALLATION
fi

