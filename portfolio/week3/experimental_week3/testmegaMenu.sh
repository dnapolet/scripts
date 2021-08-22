#!/bin/bash

    ~/student/scripts/portfolio/week2/passwordCheck.sh


    if [[ $? -eq 0 ]]; 
        then 
            echo -e "\n-------------------------------------"
            echo -e "-------------------------------------\n"
            echo -e "Welcome to the MEGAMENU!!\n"
            echo 1. Create a new folder
            echo 2. Copy a folder 
            echo 3. Set a password
            echo 4. Access the calculator
            echo 5. Create week folders
            echo 6. Check some filenames
            echo 7. Download a file from the internet
            echo 8. Exit
            echo -e "\n-------------------------------------"
            echo -e "-------------------------------------\n"
        else
            exit 1
    fi

    read -p "Please select and enter an option from the above choices: " selection


while [[ $selection -lt 8 ]];

do

    case $selection in
        1) ~/student/scripts/portfolio/week3/foldermakerMM.sh;;
        2) ~/student/scripts/portfolio/week3/foldercopierMM.sh;;
        3) ~/student/scripts/portfolio/week3/setPasswordMM.sh;;
        4) ~/student/scripts/portfolio/week3/simplecalcMM.sh;;
        5) ~/student/scripts/portfolio/week3/megafoldermakerMM.sh;;
        6) ~/student/scripts/portfolio/week3/filenamesMM.sh;;
        7) ~/student/scripts/portfolio/week3/webDownloaderMM.sh;;
    esac

done