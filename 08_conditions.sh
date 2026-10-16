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
    if [ $((number % i)) -eq 0 ]
    then
        count= count++
        echo "$count"
    fi
done

