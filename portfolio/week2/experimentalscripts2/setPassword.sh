#!/bin/bash
# This script allows a user to create a new folder and password. 
# The password will thenbe stored in a new.txt file within the new folder for safe keeping.

# Request user to input a folder name. Capture this variable as 'foldername'

    read -p "Please enter a folder name: " foldername

# Create a new directory within current folder using the variable entered 'foldername'.

    mkdir "$foldername"  

# Request user to enter a password. Capture the variable entered as 'password'.

    read -sp "Please type a new secret password: " password  

# Write variable 'password' to a new text file named secret.txt within the newly created folder named'foldername' (line 3).

    echo $password > $foldername/secret.txt
    echo

# Advise user that their password has been set and stored in a text file named 'secret.txt'.

    echo "Thank you. Your password has been set and stored in a new text file for safe keeping."
    exit 0