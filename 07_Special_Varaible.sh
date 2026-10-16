#!/bin/bash
a="hello"
b=2
c=6
d=900 #the below will take the variables which are passed as argument in this ex it will not take a,b,c,d 
echo "Print All the variables $@"
echo "Print no.of varaibles $#"
echo "Print All the variables $*"
echo "PID of the process $PWD"