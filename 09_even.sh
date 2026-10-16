#!/bin/bash

#$1 is passed an a argument
number=$1

if [ $((number%2)) -eq 0 ]
then
    echo "$number is even"
else
    echo "$number is odd"
fi