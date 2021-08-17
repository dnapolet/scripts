#!/bin/bash

#title           :menu.sh
#description     :This script will run one of three existing scripts based on user input.
#author		     :Damien Napoletano
#date            :13/08/2021
#version         :1.1

# Start of script


    ~/student/scripts/portfolio/week2/passwordCheck.sh # Launch script named 'passwordCheck.sh'.




    if [[ $? -eq 0 ]]; # If user enters correct password, they are granted access and greeted by the below menu.
        then 
            echo 1. Create a folder 
            echo 2. Copy a folder 
            echo 3. Set a password
        else # If user enters incorrect password, they are denied access and the script 'passwordCheck.sh' exits.
            exit 1
    fi



    read -p 'Please select and enter an option from the above choices: ' selection # User is prompted to select an option from the menu. The selection is stored as the varaible 'selection'.




    case $selection in # If user inputs options 1-3, then the script will execute a designated script.
        1) ~/student/scripts/portfolio/week2/foldermaker.sh;;
        2) ~/student/scripts/portfolio/week2/folderCopier.sh;;
        3) ~/student/scripts/portfolio/week2/setPassword.sh;;
        *) echo "That is not a valid option. Please try again." # If user inputs any other value, an error will be printed to the screen.
    esac


# End of script