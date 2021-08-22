#!/bin/bash

GREEN="\033[32m"
RED="\033[31m"
NORMAL="\e[0m"


while IFS='' read password || [ "$password" ]; do

    if [ ${#password} -ge 8 ]; then
        echo
        echo ---------------------------------------------------------
        echo ---------------------------------------------------------
        echo
        echo -e "$password" -- ${GREEN}has greater than 8 characters. Well done.${NORMAL}
        echo
        else    echo
                echo ---------------------------------------------------------
                echo ---------------------------------------------------------
                echo -e "$password" -- ${RED}has less than 8 characters. Please have a minimum of 8 characters to enhance security.${NORMAL}
                echo
    fi

onecapital=$(echo "$password" | grep [A-Z+])

    if [ ${#onecapital} -ne 0 ]; then
        echo -e  ${GREEN}Your password contains at least one capital letter. Well done.${NORMAL}
        else 
            echo -e ${RED}You should use at least one capital letter in your password.${NORMAL}
    fi



onenumber=$(echo "$password" | grep [0-9+])

    if [ ${#onenumber} -ge 1 ]; then
        echo -e ${GREEN}Your password contains at least one number. Well done.${NORMAL}
        else 
            echo -e ${RED}You should use at least one number in your password.${NORMAL}
    fi



onepunctuation=$(echo "$password" | grep [/?/!/#/@/$/%/*/-])

    if [ ${#onepunctuation} -ge 1 ]; then
        echo -e ${GREEN}Your password contains at least one punctuation mark. Well done.${NORMAL}
        else 
            echo -e ${RED}You should use at least one punctuation mark in your password.${NORMAL}
            echo
            echo ---------------------------------------------------------
            echo ---------------------------------------------------------
            echo
    fi



done < passwords.txt

