#!/bin/bash 

#This script allows a user to create a new folder in their current directory

#Ask user to enter the name of the folder they would like to create, and capture that variable as 'folderName'

    read -p "type the name of the folder you would like to create: " folderName 

#Make a directory called 'folderName' (users input from last read command)

    mkdir "$folderName"
    echo

#Advise the user that a new folder has been created called their nominated name.

    echo "Thank you. A new folder named '$folderName' has been created in the current directory."
    exit 0   