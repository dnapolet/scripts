#!/bin/bash

# Ask user to enter url or exit the program.
# Read the user input and store it as var1

echo "Please enter a valid url link to download or type 'exit' to quit: "
read -r var1

# If user enters word 'exit', program will exit with message.
# Else, ask user to nominate a destination to save the download. Download the URL to the destination. Restart the script.

for url in $var1
    do
        if [ "$url" == exit ];
            then 
                echo "You have chosen to exit the program. Goodbye."
                exit 0

            else 
                echo "Please type the destination for this download: "
                read -r destination
                wget "$destination" "$var1"
                ~/student/scripts/portfolio/week3/experimentalscripts/webDownloaderforloop.sh
        fi

done