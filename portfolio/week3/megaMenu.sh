#!/bin/bash

#title           :megaMenu.sh
#description     :This script, once the correct password is entered, will allow a user to perform a specific task according to their input.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


    BLUE="\033[34m" #Designated variables for different colours.
    GREEN="\033[32m"
    CYAN="\033[36m"
    MAGENTA="\033[35m"
    YELLOW="\033[33m"
    LIGHTBLUE="\033[93m"
    LIGHTGREEN="\033[92m"
    RED="\033[31m"
    DEFAULT="\e[0m"


    ~/student/scripts/portfolio/week3/passwordCheck.sh # Execute passwordCheck.sh

    x=$?

        while [[ $x -eq 0 ]]; # While the exit code from previous script is equal to 0, show the following menu.
        
            do
 
                echo -e "\n-------------------------------------"
                echo -e "-------------------------------------\n"
                echo -e "Welcome to the \e[1m\e[5mMEGAMENU!!\e[25m\e[21\n"
                echo -e ${BLUE}1. Create a new folder${DEFAULT}
                echo -e ${GREEN}2. Copy a folder${DEFAULT}
                echo -e ${CYAN}3. Set a password${DEFAULT}
                echo -e ${MAGENTA}4. Access the calculator${DEFAULT}
                echo -e ${YELLOW}5. Create week folders${DEFAULT}
                echo -e ${LIGHTBLUE}6. Check some filenames${DEFAULT}
                echo -e ${LIGHTGREEN}7. Download a file from the internet${DEFAULT}
                echo -e ${RED}8. Exit${DEFAULT}
                echo -e "\n-------------------------------------"
                echo -e "-------------------------------------\n"
    

                read -p "Please select and enter an option from the above choices: " selection # Request user to make a selection




                case $selection in # According to user selection, perform the associated operation.
                1) ~/student/scripts/portfolio/week3/foldermaker.sh;;
                2) ~/student/scripts/portfolio/week3/folderCopier.sh;;
                3) ~/student/scripts/portfolio/week3/setPassword.sh;;
                4) ~/student/scripts/portfolio/week3/simplecalc.sh;;
                5) ~/student/scripts/portfolio/week3/megafoldermaker.sh;;
                6) ~/student/scripts/portfolio/week3/filenames.sh;;
                7) ~/student/scripts/portfolio/week3/webDownloader.sh;;
                8) echo "You have chosen to exit the menu. Goodbye."
                    break;
                    ;;
                *) echo "Please select from the listed options."

                esac
        
        done

    exit 0


# End of script