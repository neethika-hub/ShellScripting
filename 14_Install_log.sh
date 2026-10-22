#!/bin/bash

id_check=$(id -u)
log_folder="/var/log/install_logs"
script_name=$(echo $0 | cut -d "_" -f1)
file_name="$log_folder/$scriptname.log"
#Validate function to check if the script is running with root or not
ID_VALIDATION(){
if [ $id_check -eq 0 ]
then
    echo "You are in Root Please proceed with installation" | tee -a $file_name
else
    echo "You are Not in ROOT please switch to ROOT user" | tee -a $file_name
    exit 1
fi
}
#Installation function to install
INSTALLATION(){
if [ $1 -eq 0 ]
then
    echo "The installation of $2 is SUCCESS" | tee -a $file_name
else
    echo "The isntallation of $2 is FAILED" | tee -a $file_name
    exit 1
fi
}

ID_VALIDATION 
mkdir -p $log_folder
installation_list=("mysql" "nginx" "nodejs" "httpd")
for i in ${installation_list[@]}
do
    dnf list installed $i | tee -a $file_name
    if [ $? -eq 0 ]
    then
        echo "$i is installed already" | tee -a $file_name
    else
        dnf install $i -y & >> $file_name
        INSTALLATION $? $i
    fi
done