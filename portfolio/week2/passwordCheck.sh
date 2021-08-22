#!/bin/bash

#title           :passwordCheck.sh
#description     :This script compares a user generated hash string with a stored hash string to either allow or deny a user access.
#author		     :Damien Napoletano
#date            :13/08/2021
#version         :1.1

# Start of script


    VAR1=`cat ~/student/scripts/portfolio/week2/secretfolder/secret.txt` # Designating that VAR1 will be the contents of the file 'secret.txt'.

    echo "Enter password to login: " # Prompt the user to enter a password. Store entered result as the variable 'password'.
        read -s password

    VAR2=$(echo $password | sha256sum) # VAR2 will be the output from converting the users entered password into a hash string.


        if [ "$VAR1" = "$VAR2" ]; # If the contents of the file 'secret.txt'(VAR1) is equal to the output from converted entered password in hash string (VAR2)


            then 
                echo "Access Granted. Thank you." # then write to the screen 'Access Granted. Thank you.' and exit with a success code of '0'.
                exit 0;
    

            else 
                echo "Access Denied. Please try again." # else write an error message and exit with an error code of '1'.
                exit 1;
            
        fi


# End of script