#!/bin/bash

echo "Name        Size(Bytes)    Permissions" > backup

for file in *
do
    if [ -f "$file" ]
    then
         size=$(ls -l "$file" | awk '{print $5}')
         perm=$(ls -l "$file" | awk '{print $1}')
                                
         echo "$file    $size    $perm" >> backup
    fi
done

echo "Information stored in backup file."
