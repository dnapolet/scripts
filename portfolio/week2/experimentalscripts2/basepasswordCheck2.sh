#!/bin/bash

VAR1=`cat ~/student/scripts/portfolio/week2/experimentalscripts/secretfolder/secret.txt`

echo "Enter password to login: "
    read -s password

VAR2=$(echo $password | sha256sum)

if [ "$VAR1" = "$VAR2" ];
    then
        echo "Access Granted. Thank you."
        exit 0;
    else 
        echo "Access Denied. Please try again."
        exit 1;
fi