#!/bin/bash

#title           :simplecalc.sh
#description     :This script will allow a user to perform simple calculations with two numbers. 
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


    BLUE="\033[34m" # Designated variables changing colours.
    GREEN="\033[32m"
    RED="\033[31m"
    PURPLE="\033[35m"
    DEFAULT="\e[0m"


    echo "Please enter two numbers (use a space to separate each number): " # Prompt user to enter two numbers, using a space to separate the two.
    
    read number1 number2 # Store the entered numbers as variables 'number1' and 'number2'.

    echo "You have entered $number1 and $number2" # Print to screen the numbers the user has chosen.

    echo "Which of the following calculations would you like to perform?: "  # Prompt user to select a calculation method by entering a choice from the menu.

        echo -e ${BLUE}1. Addition${DEFAULT}
        echo -e ${GREEN}2. Subtraction${DEFAULT}
        echo -e ${RED}3. Multiplication${DEFAULT}
        echo -e ${PURPLE}4. Division${DEFAULT}



    read selection #Store the entered choice as the variable 'selection'.


        case $selection in  # Depending on the value of the variable 'selection', a calculation will be completed and displayed in a pre-defined colour.
                            # If a number other than 1,2,3,4 is entered, an error will be displayed.

            1) VAR1=`expr $number1 + $number2`
                echo -e ${BLUE}The result of "$number1" + "$number2" is "$VAR1"${NORMAL};;

            2) VAR2=`expr $number1 - $number2`
                echo -e ${GREEN}The result of "$number1" - "$number2" is "$VAR2"${NORMAL};;

            3) VAR3=`expr $number1 \* $number2`
                echo -e ${RED}The result of "$number1" \* "$number2" is "$VAR3"${NORMAL};;

            4) VAR4=`expr $number1 \/ $number2`
                echo -e ${PURPLE}The result of "$number1" / "$number2" is "$VAR4"${NORMAL};;

            *) echo "That is not a valid option. Please try again.";;
        
        esac

    exit 0


# End of script