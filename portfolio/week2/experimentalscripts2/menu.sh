#!/bin/bash

#This script executes another script to begin with.
#Based on user input, other scripts will be launched requiring further user input.

#Launch script named 'passwordCheck.sh'.

    ~/student/scripts/portfolio/week2/passwordCheck.sh

#If user enters correct password, they are granted access and greeted by the below menu.
#If user enters incorrect password, they are denied access and the script 'passwordCheck.sh' exits.

    if [[ $? -eq 0 ]]; 
        then 
            echo 1. Create a folder 
            echo 2. Copy a folder 
            echo 3. Set a password
        else 
            exit 1
    fi

#User is prompted to select an option from the above menu. The enter selection is stored as the varaible 'selection'.

    read -p 'Please select an option: ' selection

#If user inputs options 1-3, then the script will execute a designated script.
#If user inputs any number outside of the range (0, 4 or above - reprsented by *), an error will be printed to the screen.

    case $selection in
        1) ~/student/scripts/portfolio/week2/experimentalscripts/foldermaker.sh;;
        2) ~/student/scripts/portfolio/week2/experimentalscripts/foldercopier.sh;;
        3) ~/student/scripts/portfolio/week2/experimentalscripts/setPassword.sh;;
        *) echo "That is not a valid option. Please try again."
    esac