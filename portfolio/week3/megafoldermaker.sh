#!/bin/bash

#title           :megafoldermaker.sh
#description     :This script will allow a user to create a sequence of folders.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


    echo "Please enter the first number in the sequence of folders: "

    read num1

    echo "Please enter the last number in the sequence of folders: "

    read num2


    for ((i = $num1; i <= $num2; i++)) #For every number between the first argument and the last

        do

            echo "Creating directory named: $i" #Create a new folder for that number

            mkdir "week $i"

    done

    exit 0


# End of script