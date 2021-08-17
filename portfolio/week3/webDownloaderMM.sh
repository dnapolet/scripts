#!/bin/bash

# Ask user to enter url or exit the program.
# Read the user input and store it as var1

echo -e "\nPlease enter a valid url link to download or type 'exit' to quit:\n"
read -r var1

# If user enters word 'exit', program will exit.
# While input is not equal to 'exit', then ask user to nominate a destination to save the download. 
# Download the URL to the destination, and prompt user to enter another url for download, starting the loop again.

while [[ $var1 != exit ]];

    do
        echo -e "\nPlease type the destination for this download:\n"
        read -r destination
        wget "$destination" "$var1"
        echo -e "\nLet's try another one!\n"
        echo -e "\nPlease enter a valid url link to download or type 'exit' to quit:\n"
        read -r var1

done