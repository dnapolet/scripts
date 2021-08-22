#!/bin/bash

#title           :GetNumbers.sh
#description     :This script uses functions to promt the user to enter a value between two numbers. 
#author		     :Damien Napoletano
#date            :22/08/2021
#version         :1.3

# Start of script


    printError() # This function prints a given error.

    {

        echo -e "\033[31mERROR:\033[0m $1"

    }


    getNumber() # This function will get a value between the 2nd and 3rd arguments.

    {

        read -p "$1: "

        while (( $REPLY < $2 || $REPLY> $3 )); do

            printError "Input must be between $2 and $3"

        done

    }



    echo "this is the start of the script"

    getNumber "please type a number between 1 and 10" 1 10

    echo "Thank you!"

    getNumber "please type a number between 50 and 100" 50 100

    echo "Thank you!"


# End of script