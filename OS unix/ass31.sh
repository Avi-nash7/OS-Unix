#!/bin/bash

echo "Enter username:"
read username

if grep -q "^$username:" /etc/passwd
then
    echo "Valid user"
else
    echo "Invalid user"
fi
