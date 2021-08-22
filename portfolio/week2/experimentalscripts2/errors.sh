#!/bin/bash

#The correct password (shhh) has been allocated to the variable 'secret'.
    
    secret='shhh' #Don't tell anyone!

#Ask user to enter what they think the secret code is, and store that input as the variable 'REPLY'.
    
    read -s -p "what's the secret code?" REPLY
        echo

#if the user types in the correct secret, tell them they got it right, or else advise them they got it wrong.

    if [ "$secret" = $REPLY ]; then

        echo "You got it right!"

        correct=true

    else     echo "You got it wrong :("

        correct=false

    fi

#If the user enters the incorrect password, then they need to be told to go away.

case $correct in

false)

    echo "Go Away!" 

    ;;

true)

#If the user enters the correct password, then they are told that they have unlocked a secret menu!

    echo "you have unlocked the secret menu!"

    #TODO: add a secret menu for people in the know.

    ;;

esac