#!/bin/bash

for file in "$1"/*
do
    name=$(basename "$file")
    lower=$(echo "$name" | tr 'A-Z' 'a-z')

    if [ "$name" != "$lower" ]
    then
         if [ -e "$1/$lower" ]
         then
              echo "Warning: Not overwriting $lower"
         else
              mv "$1/$name" "$1/$lower"
         fi
    fi
done
