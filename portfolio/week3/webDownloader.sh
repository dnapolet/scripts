#!/bin/bash

#title           :webDownloader.sh
#description     :This script will allow a user to download a requested url.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script


    echo -e "\nPlease enter a valid url link to download or type 'exit' to quit:\n" # Ask user to enter url or exit the program.

    read -r var1 # Read the user input and store it as 'var1'


        while [[ $var1 != exit ]]; # If user enters word 'exit', program will exit.

            do # While input is not equal to 'exit'. 
        
                echo -e "\nPlease type the destination for this download:\n" # Ask user to nominate a destination to save the download. 
        
                read -r destination
        
                wget "$destination" "$var1" # Download the URL to the destination,
        
                echo -e "\nLet's try another one!\n"
        
                echo -e "\nPlease enter a valid url link to download or type 'exit' to quit:\n" # Prompt user to enter another url for download, starting the loop again.
        
                read -r var1

        done


# End of script