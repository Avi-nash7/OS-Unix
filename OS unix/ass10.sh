#!/bin/bash

echo "Enter source file name:"
read source

echo "Enter destination file name:"
read dest

cp "$source" "$dest"

echo "Contents copied successfully."
