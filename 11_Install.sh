#!/bin/bash


id_check=$(id -u)
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation"
else
    echo "You are Not in ROOT please switch to ROOT user"
    exit 1
fi
dnf install nginx -y
if [ $? -eq 0 ]
then
    echo "nginx installation is SUCCESS"
else
    echo "nginx installation is FAILED"
    exit 1
fi