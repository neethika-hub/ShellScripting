#!/bin/bash
a="hello"
b=2
c=6
d=900 #the below will take the variables which are passed as argument in this ex it will not take a,b,c,d 
echo "Print All the variables $@"
echo "Print no.of varaibles $#"
echo "Print All the variables $*"
echo "PWD of the process $PWD"
echo "Home directory of the user $HOME"
echo "Which user is running the script $USER"
echo "PID of the current running script $$"
sleep 30 &
echo "PID of the last command running in background $!"
echo "exit status of the last command executed $?" 
#exit status 0 --> success
#exit status other than 0 (b/w 1--> 127) --> Failure

