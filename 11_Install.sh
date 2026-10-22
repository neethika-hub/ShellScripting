#!/bin/bash


id_check=$(id -u)
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation"
else
    echo "You are Not in ROOT please switch to ROOT user"
    exit 1
fi
dnf list installed nginx
if [ $? -eq 0 ]
then
    echo "nginx is installed already"
else
    dnf install nginx -y
    if [ $? -eq 0 ]
    then
        echo "The installation is SUCCESS"
    else
        echo "The isntallation is FAILED"
        exit 1
    fi
fi