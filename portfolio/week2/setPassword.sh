#!/bin/bash

#title           :setPassword.sh
#description     :This script will ask the user to enter a new folder and type a password (hidden input). Input saved in a new text file inside nominated folder.
#author		     :Damien Napoletano
#date            :13/08/2021
#version         :1.1

# Start of script


    read -p "Please enter a folder name: " foldername # Request user to input a folder name. Capture this variable as 'foldername'



    mkdir "$foldername" # Create a new directory within current folder using the variable entered 'foldername'.



    read -sp "Please type a new secret password: " password  # Request user to enter a password. Capture the variable entered as 'password'.



    echo $password > $foldername/secret.txt # Write variable 'password' to a new text file named secret.txt within the newly created folder named'foldername'.
    echo



    echo "Thank you. Your password has been stored in a new file called secret.txt for safe keeping." # Advise user that their password has been set and stored in a text file named 'secret.txt'.
    exit 0 # Exit with a success code of '0'.


# End of script