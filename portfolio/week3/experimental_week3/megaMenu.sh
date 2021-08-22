#!/bin/bash

    ~/student/scripts/portfolio/week2/passwordCheck.sh


    if [[ $? -eq 0 ]]; 
        then 
            echo
            echo 1. Create a new folder 
            echo 2. Copy a folder 
            echo 3. Set a password
            echo 4. Access the calculator
            echo 5. Create week folders
            echo 6. Check some filenames
            echo 7. Download a file from the internet
        else 
            exit 1
    fi

#User is prompted to select an option from the above menu. The enter selection is stored as the varaible 'selection'.

    read -p 'Please select and enter an option from the above choices: ' selection

#If user inputs options 1-3, then the script will execute a designated script.
#If user inputs any number outside of the range (0, 4 or above - reprsented by *), an error will be printed to the screen.


    case $selection in
        1) ~/student/scripts/portfolio/week2/foldermaker.sh;;
        2) ~/student/scripts/portfolio/week2/foldercopier.sh;;
        3) ~/student/scripts/portfolio/week2/setPassword.sh;;
        4) ~/student/scripts/portfolio/week3/experimentalscripts/simplecalc.sh;;
        5) ~/student/scripts/portfolio/megafoldermaker.sh;;
        6) ~/student/scripts/portfolio/week3/experimentalscripts/filenames.sh;;
        7) ~/student/scripts/portfolio/week3/experimentalscripts/webDownloader.sh;;
        *) echo "That is not a valid option. Please try again."
    esac