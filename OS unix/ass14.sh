#!/bin/bash

factorial(){
    n=$1
    fact=1

    while [ $n -gt 1 ]
    do
       fact=$((fact * n))
       n=$((n - 1))
    done

    echo $fact
}

result=$(factorial $1)

echo "Factorial of $1 is $result"
