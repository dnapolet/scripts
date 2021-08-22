#!/bin/bash



GREEN="\033[32m"
RED="\033[31m"
NORMAL="\e[0m"


while IFS='' read password || [ "$password" ]; do

    if [ ${#password} -ge 8 ]; then
        
    
                onecapital=$(echo "$password" | grep [A-Z+])

                    if [ ${#onecapital} -ne 0 ]; then
                    
                
                                onenumber=$(echo "$password" | grep [0-9+])

                                    if [ ${#onenumber} -ge 1 ]; then
        
    
                                                onepunctuation=$(echo "$password" | grep [/?/!/#/@/$/%/*/-])

                                                    if [ ${#onepunctuation} -ge 1 ]; then
        
                                                            echo -e "$password"- ${GREEN}Congratulations! This password has met all criteria. You have a strong password.${NORMAL}

                                                        else
                                                            echo -e "$password"- ${RED}Getting stonger. Should contain at least one special character.${NORMAL} 
    
                                                    fi
                    

                                        else
                                            echo -e "$password"- ${RED}Getting stonger. Should contain at least one number.${NORMAL}
                            
                                    fi


                        else 
                            echo -e "$password"- ${RED}Getting stronger! Should contain at least one capital letter.${NORMAL}
                    
                    fi


        else
            echo -e "$password"- ${RED}Weak password. Password length should be greater than or equal to 8 characters long.${NORMAL}
    fi


done < passwords.txt