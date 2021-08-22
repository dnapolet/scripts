#!/bin/bash


#title           :testingGoodPassword.sh (part of Regexes.sh)
#description     :This script reads a list of passwords (passwords.txt), tests for multiple conditions, and gives feedback regarding their strength.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script

    GREEN="\033[32m"
    RED="\033[31m"
    NORMAL="\e[0m"


    while IFS='' read password || [ "$password" ]; do

        if [ ${#password} -ge 8 ]; then # If password length is greater than/equal to 8 characters, move onto the next test.
        
    
                    onecapital=$(echo "$password" | grep [A-Z+])

                        if [ ${#onecapital} -ne 0 ]; then # If password contains at least one capital letter, move onto the next test.
                    
                
                                    onenumber=$(echo "$password" | grep [0-9+])

                                        if [ ${#onenumber} -ge 1 ]; then # If password contains at least one number, move onto the next test.
        
    
                                                    onepunctuation=$(echo "$password" | grep [/?/!/#/@/$/%/*/-]) 

                                                        if [ ${#onepunctuation} -ge 1 ]; then # If password contains at least one special character, move onto the next test.
        
                                                                echo -e "$password"- ${GREEN}Congratulations! This password has met all criteria. You have a strong password.${NORMAL}

                                                            else    # If password does not contain at least one special character, echo the following.
                                                                echo -e "$password"- ${RED}Getting stonger. Should contain at least one special character.${NORMAL} 
    
                                                        fi
                    

                                            else # If password does not contain at least one number, echo the following.
                                                echo -e "$password"- ${RED}Getting stonger. Should contain at least one number.${NORMAL}
                            
                                        fi


                            else # If password does not contain at least one capital letter, echo the following.
                                echo -e "$password"- ${RED}Getting stronger. Should contain at least one capital letter.${NORMAL}
                    
                        fi


            else # If password length is not greater than or equal to 8 charcaters, echo the following.
                echo -e "$password"- ${RED}Weak password. Password length should be greater than or equal to 8 characters long.${NORMAL}
        fi


    done < passwords.txt


# End of script