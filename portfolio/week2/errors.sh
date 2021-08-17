#!/bin/bash


    
    secret='shhh' # The correct password (shhh) has been allocated to the variable 'secret'.


    
    read -s -p "what's the secret code?" REPLY # Ask user to enter what they think the secret code is, and store that input as the variable 'REPLY'.
        echo



    if [ "$secret" = $REPLY ]; then # If the user types in the correct password, tell them they got it right, or else advise them they got it wrong.

        echo "You got it right!"

        correct=true

    else     echo "You got it wrong :("

        correct=false

    fi



case $correct in #If the user enters the incorrect password, then they need to be told to go away.

false)

    echo "Go Away!" 

    ;;

true)



    echo "you have unlocked the secret menu!" # If the user enters the correct password, then they are told that they have unlocked a secret menu!

    #TODO: add a secret menu for people in the know.

    ;;

esac