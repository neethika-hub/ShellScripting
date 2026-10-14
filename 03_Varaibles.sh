#!/bin/bash

value1=100
value2=300
value3=Shynu

a=$(($value1+$value2))
echo "$a"
b=$(($value1+$value3))
echo $b
#when we add a string with the int it will make the value of the string as 0 and perform the sum