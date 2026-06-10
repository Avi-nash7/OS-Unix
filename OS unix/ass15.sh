#!/bin/bash

echo "Enter the number of elements:"
read n

sum=0

for ((i=0; i<n; i++))
do
    echo "Enter element $((i+1)):"
    read arr[$i]

    sum=$((sum + arr[$i]))
done

echo "Array elements are: ${arr[@]}"
echo "Sum of all elements = $sum"
