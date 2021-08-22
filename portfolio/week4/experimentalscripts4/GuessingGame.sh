#!/bin/bash

#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}




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
            echo "Congratulations! You got it! $guess is Right!!"
            exit 0
    else 
        printError "Sorry, that number is outside of the range! Please try again."

    
    fi
    
}

# Start of the script

# Ask user to input a number between 1 and 100. Store that input as the variable 'guess'.
# Call the 'getNumber' function to perform against the variable 'guess'.

echo "Shall we play a little game....."
echo "Try to guess the secret number!"
read -p "Please type your guess between 1 and 100: " guess

getNumber $guess

# Declaring a variable ('result') that captures the result from the function 'getNumber' (either correct, too high or too low).
# While the 'result' is not equal to the output 'correct' (ie. user has not guessed the secret number, then repeat the script)

result=$(getNumber)

while [ "$result" != "That is correct!!" ];
    do read -p "Please type a number between 1 and 100: " guess
        getNumber $guess
done

exit 0