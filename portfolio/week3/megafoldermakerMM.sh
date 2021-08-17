#!/bin/bash

echo "Please enter the first number in the sequence of folders:  "

read num1

echo "Please enter the last number in the sequence of folders: "

read num2

#For every number between the first argument and the last

    for ((i = $num1; i <= $num2; i++))

    do

    #Create a new folder for that number

        echo "Creating directory named: $i"

        mkdir "week $i"

done
exit 0