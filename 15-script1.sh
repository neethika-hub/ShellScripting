#!/bin/bash
echo "The pid of the script1 is $$"
MESSAGE="Hello! Good Morning. I am from Script1"
echo "$MESSAGE"
./16-script2.sh  #Different pid's and variable are not shared b/w script1 and script2
echo "Trying to use script 2 variable"
echo "$GREETING"



source ./16-script2.sh
echo "$GREETING"