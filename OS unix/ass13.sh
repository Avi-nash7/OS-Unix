#!/bin/bash

for file in *.c
do
    exe="${file%.c}"

    echo "Compiling $file ..."
    gcc "$file" -o "$exe"

    if [ $? -eq 0 ]
    then
         echo "Executing $exe ..."
         ./"$exe"
         echo
    else
         echo "Compilation failed for $file"
    fi
done
