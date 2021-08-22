#!/bin/bash 

#title           :foldermaker.sh
#description     :This script will create a new folder. The name is defined by the requested user input.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


        read -p "Please type the name of the folder you wish to create: " folderName # Ask user to enter the name of the new folder, and capture that variable as 'folderName'

        mkdir "$folderName" # Make a directory called 'folderName' where 'folderName' is the user input from the last command
        echo

        echo "Thank you. A new folder named '$folderName' has been created in the current directory." # Advise the user that a new folder has been created by their nominated name.
        exit 0 # Exit with a success code of '0'.


#End of script