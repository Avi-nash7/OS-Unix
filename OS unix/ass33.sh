#!/bin/bash

echo "Enter first filename:"
read f1

echo "Enter second filename:"
read f2

echo "Enter new filename to store merged content:"
read newfile

# Check if files exist
if [ ! -f "$f1" ] || [ ! -f "$f2" ]
then
    echo "One or both files do not exist!"
    exit 1
fi

# Sort files and store temporarily
sort "$f1" > sorted1.txt
sort "$f2" > sorted2.txt

# Merge sorted files into new file
cat sorted1.txt sorted2.txt > "$newfile"

echo "Files sorted and merged into $newfile"
