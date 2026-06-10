#!/bin/bash

# Function to merge two arrays
merge_arrays()
{
    merged=("${arr1[@]}" "${arr2[@]}")
    echo "${merged[@]}"
}

echo "Enter number of elements in first array:"
read n1

echo "Enter elements of first array:"
for ((i=0; i<n1; i++))
do
   read arr1[$i]
done

echo "Enter number of elements in second array:"
read n2

echo "Enter elements of second array:"
for ((i=0; i<n2; i++))
do
   read arr2[$i]
done

echo "Merged Array is:"
merge_arrays
