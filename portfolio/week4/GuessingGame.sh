#!/bin/bash

#title           :GuessingGame.sh
#description     :This script prompts the user to guess the secret number. Script will continue running until the number has been guessed correctly.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script


    printError() # This function prints a given error

    {

        echo -e "\033[31mERROR:\033[0m $1"

    }


    getNumber() # Testing if a user input number (variable $guess) is less than, greater than, or equal to 42.

    {

    if [[ $guess -lt 42 ]] && [[ $guess -ge 1 ]]; # If either of these conditions are met, then execute the associated command.
            then 
                echo "Your guess is too low!!"

        elif [[ $guess -gt 42 ]] && [[ $guess -le 100 ]];
            then
                echo "Your guess is too high!!"

        elif [[ $guess -eq 42 ]];
            then
            echo "Congratulations! You got it! $guess is Right!!"
            exit 0

        else 
            printError "Sorry, that number is outside of the range! Please try again."

    fi
    
    }



    echo "Shall we play a little game....."

    echo "Try to guess the secret number!"
    
    read -p "Please type your guess between 1 and 100: " guess # Ask user to input a number between 1 and 100. Store that input as the variable 'guess'.

    getNumber $guess # Call the 'getNumber' function to perform against the variable 'guess'.

    result=$(getNumber) # Declaring a variable ('result') that captures the result from the function 'getNumber' (either correct, too high or too low).

        while [ "$result" != "That is correct!!" ]; # While the 'result' is not equal to the output 'correct' (ie. user has not guessed the secret number, then repeat the script)
            
            do read -p "Please type a number between 1 and 100: " guess
                getNumber $guess

        done

    exit 0


# End of script