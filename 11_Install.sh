#!/bin/bash


id_check=$(id -u)
echo "$id_check"
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation"
else
    echo "You are Not in ROOT please switch to ROOT user"
fi
dnf install nginx -y
echo "$?"