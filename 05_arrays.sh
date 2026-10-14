#!/bin/bash

a=("123" "456" "789" "156")
b=("Shynu" "appu" "neethika" "vinayak")

echo "The value and the name is ${a[0]} --> ${b[0]}"
echo "The value and the name is ${a[1]} --> ${b[1]}"
echo "The Value and the name is ${a[@]} --> ${b[@]}"