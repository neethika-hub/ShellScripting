#!/bin/bash

number=$1
count=0
PrimeNumber(){
    if [ $count -eq 2 ]
    then
        echo "$number is a PRIME NUMBER"
    else
        echo "$number is NOT A PRIME NUMBER"
    fi
}

for ((i=1;i<10;i++))
do
    if [ $((number%i)) -eq 0 ]
    then
        count=$((count+1))
    else
        count=$count
    fi
    count=$count
done
PrimeNumber