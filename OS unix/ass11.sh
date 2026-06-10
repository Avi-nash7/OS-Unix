#!/bin/bash

echo "Users currently logged in:"
who | awk '{print $1}' | sort -u

echo
echo "Users currently logged out:"

for user in $(cut -d: -f1 /etc/passwd)
do
    if ! who | awk '{print $1}' | grep -q "^$user$"
    then
         echo "$user"
    fi
done
