#!/bin/bash

# Function that tests if a user input number (variable $guess) is less than, greater than, or equal to 42.
# If either of those conditions are met, then execute the associated command.

getNumber()

{

if [[ $guess -lt 42 ]] && [[ $guess -ge 1 ]];
        then 
            echo "Your guess is too low!!"

    elif [[ $guess -gt 42 ]] && [[ $guess -le 100 ]];
        then
            echo "Your guess is too high!!"

    elif [[ $guess -eq 42 ]];
        then
            echo "That is correct!!"
            exit 0
    else 
        echo "That number is outside of the range! Please try again."

    
    fi
    
}

# Start of the script

# Ask user to input a number between 1 and 100. Store that input as the variable 'guess'.
# Call the 'getNumber' function to perform against the variable 'guess'.

read -p "Please type a number between 1 and 100: " guess
getNumber $guess

# Declaring a variable ('result') that captures the result from the function 'getNumber' (either correct, too high or too low).
# While the 'result' is not equal to the output 'correct' (ie. user has not guessed the secret number, then repeat the script)

result=$(getNumber)

while [ "$result" != "That is correct!!" ];
    do read -p "Please type a number between 1 and 100: " guess
        getNumber $guess
done

exit 0