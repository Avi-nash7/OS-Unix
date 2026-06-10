#!/bin/bash

file="employee.txt"

while true
do
    echo "-----------------------------------"
    echo "1. Search employee by Emp No"
    echo "2. Display Emp No and Salary"
    echo "3. Add new employee record"
    echo "4. Exit"
    echo "-----------------------------------"
    echo "Enter your choice:"
    read ch

    case $ch in

    1)
       echo "Enter Employee Number:"
       read eno

       grep "^$eno " $file

       if [ $? -ne 0 ]
       then
            echo "Record not found"
       fi
       ;;

    2)
       echo "Emp No   Salary"
       awk '{print $1, $3}' $file
       ;;

    3)
       echo "Enter Emp No:"
       read eno
       echo "Enter Emp Name:"
       read ename
       echo "Enter Emp Salary:"
       read esal

       echo "$eno $ename $esal" >> $file
       echo "Record added successfully"
       ;;
    4)
       echo "Exiting..."
       exit 0
       ;;
    *)
       echo "Invalid choice"
       ;;
    esac
done
