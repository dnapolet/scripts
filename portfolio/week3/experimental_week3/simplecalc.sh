#!/bin/bash

#This script provides a simple calculator function.
#Based on user input, the script will calculate the result for the two numbers entered.

#Prompt user to enter two numbers, using a space to separate the two.

    echo "Please enter two numbers (use a space to separate each number): "
    
#Store the entered numbers as variables 'number1' and 'number2'.
    
    read number1 number2

#Print to screen the numbers the user has chosen.

    echo "You have entered $number1 and $number2"

#Prompt user to select a calculation method by entering a choice from the menu.

    echo "Which of the following calculations would you like to perform?: "   

        echo 1. Addition
        echo 2. Subtraction
        echo 3. Multiplication
        echo 4. Division

#Store the entered choice as the variable 'selection'.

    read selection

#Below are the stored variables for a colour change performed with each result below

    BLUE="\033[34m"
    GREEN="\033[32m"
    RED="\033[31m"
    PURPLE="\033[35m"
    NORMAL="\e[0m"

#According to the value of the variable 'selection', a particular calculation will be completed and displayed in a pre-defined colour.
#If a number other than 1,2,3,4 is entered, an error will be displayed.

    case $selection in

        1) VAR1=`expr $number1 + $number2`
            echo -e ${BLUE}The result of "$number1" + "$number2" is "$VAR1"${NORMAL};;

        2) VAR2=`expr $number1 - $number2`
            echo -e ${GREEN}The result of "$number1" - "$number2" is "$VAR2"${NORMAL};;

        3) VAR3=`expr $number1 \* $number2`
            echo -e ${RED}The result of "$number1" \* "$number2" is "$VAR3"${NORMAL};;

        4) VAR4=`expr $number1 \/ $number2`
            echo -e ${PURPLE} The result of "$number1" / "$number2" is "$VAR4"${NORMAL};;

        *) echo "That is not a valid option. Please try again.";;
        
    esac

exit 0