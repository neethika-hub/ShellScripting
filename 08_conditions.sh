#!/bin/bash

#syntax for "if" condition in scripting
#if [ condition ]
#then
#logic
#else
#logic
#fi

#code is the number is prime/not

number=$1

for (( i=1; i<10; i++ ))
do
    if [ $((number % i)) -eq 0 ]
    then
        count=$((count+1))
    else
        count=$count
    fi
    count=$count  
done
if [ $count -gt 2 ]
then
    echo "$number is not a Prime Number"
else
    echo "$number is a Prime Number"
fi

