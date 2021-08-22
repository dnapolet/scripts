#!/bin/bash

#title           :regexes.sh
#description     :This script stores functions that perform certain regexes.
#author		     :Damien Napoletano
#date            :22/08/2021
#version         :1.2

# A collection of grep statments in order to find the following:

    # All sed statements.

        function sed_statements(){

            grep -r "^sed"

        }
     

    # All lines that start with the letter 'm'.

        function starting_m(){

            grep -r "^m" 

        }

    
    # All lines that contain three digit numbers

        # This regex matches three consecutive numbers, even if part of a larger number.
    
            function consecutive(){

                grep -r "[0-9][0-9][0-9]"     

            }
    

        # This codes provides a match for exactly three characters on their own (I had to make a text file containing these strings as none were found otherwise) 

            function three_only(){

                grep -r '^[0-9]\{3\}$' 

            }
                
                
        # All echo statements with at least three words

            function echo_three_words(){

                grep -r echo[[:space:]]\"*[a-zA-Z][[:alpha:]]*[[:space:]][a-zA-Z][[:alpha:]]*[[:space:]][a-zA-Z][[:alpha:]]*

            }

                 
        # All lines that would make a good password

            function password_conditions(){

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

            }



