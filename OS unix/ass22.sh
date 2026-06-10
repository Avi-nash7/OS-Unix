#!/bin/bash

echo "Enter Basic Salary:"
read basic

if [ $basic -lt 1500 ]
then
    hra=$(echo "$basic * 0.10" | bc)
    da=$(echo "$basic * 0.90" | bc)
else
    hra=500
    da=$(echo "$basic * 0.98" | bc)
fi

gross=$(echo "$basic + $hra + $da" | bc)

echo "----------------------------"
echo "Basic Salary : $basic"
echo "HRA          : $hra"
echo "DA           : $da"
echo "Gross Salary : $gross"
echo "----------------------------"
