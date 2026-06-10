#!/bin/bash

echo "Enter username:"
read uname

if grep -q "^$uname:" /etc/passwd
then
    echo "User Information:"
    grep "^$uname:" /etc/passwd
else
    echo "User not found."
fi
