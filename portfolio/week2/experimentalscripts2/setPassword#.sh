#!/bin/bash
read -p "Please enter a folder name: " foldername  # requesting user to input a folder name
mkdir "$foldername"  # create a new directory within current folder using the entered folder name in previous step
read -sp "Please type a new secret password: " password  # request user to enter a password
echo $password | sha256sum > $foldername/secret.txt # write password hash in a new text file named secret.txt within the newly created folder from line 3
echo
echo Thank you. Your password has been successfully created. 
echo Goodbye.
exit 0