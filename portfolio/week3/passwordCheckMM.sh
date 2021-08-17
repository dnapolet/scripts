#!/bin/bash
# This script compares a user generated hash string with a stored hash string to either allow or deny a user access

#Designating that VAR1 will be the contents of the file 'secret.txt'.
    VAR1=`cat ~/student/scripts/portfolio/week2/secretfolder/secret.txt`

#Prompt the user to enter a password. Store entered result as the variable 'password'.
    
    echo "Enter password to login: "
        read -s password

#VAR2 will be the output from converting the users entered password into a hash string.
    VAR2=$(echo $password | sha256sum)

#If the contents of the file 'secret.txt'(VAR1) is equal to the output from converted entered password in hash string (VAR2)
    
    if [ "$VAR1" = "$VAR2" ];

#then write to the screen 'Access Granted. Thank you.' and quit with exit code 0
        
        then
            echo "Access Granted. Thank you."
            exit 0;
    
#else write an error message and quit with exit code 1
        
        else 
            echo "Access Denied. Please try again."
            exit 1;
    fi