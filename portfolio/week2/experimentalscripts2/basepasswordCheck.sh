#!/bin/bash
VAR1=ab6882888f0cbd5595e9fcb0d767a697127426e0c89301a8ac91f3f4b8b75366  -
echo "Enter password to login: "
read -s password

VAR2=$(echo $password | sha256sum)
echo "The hash value is $VAR2"

if [ "$VAR1" = "$VAR2" ];
then
    echo "Access Granted. Thank you."
    exit 0;
else 
    echo "Access Denied. Please try again."
    exit 1;
fi