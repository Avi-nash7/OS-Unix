#!/bin/bash

for word in $(cat FILE)
do
    first=${word:0:1}
    last=${word: -1}

    if [ "$first" = "$last" ]
    then
         echo "$word"
    fi
done
