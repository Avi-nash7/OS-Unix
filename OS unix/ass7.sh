#!/bin/bash

pos=0
neg=0

for num in "$@"
do
    if [ $num -gt 0 ]
    then
         pos=$((pos + 1))
    elif [ $num -lt 0 ]
    then
         neg=$((neg + 1))
    fi
done

echo "Positive Numbers: $pos"
echo "Negative Numbers: $neg"
