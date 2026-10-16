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
count=0
for (( i=1; i<10; i++ ))
do
    echo "$i"
    if [ $((number % i)) -eq 0 ]
    then
        count= $((count+1))
    fi
    echo "$count"
done

