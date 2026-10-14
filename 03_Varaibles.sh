#!/bin/bash

value1=100
value2=300
value3=40.2
value4=60.15
value5=Shynu

echo "Sum b/w int and float"
A=$(echo $value1+$value3 | bc)
echo "$A"