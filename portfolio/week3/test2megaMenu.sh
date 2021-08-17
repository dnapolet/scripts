#!/bin/bash

    ~/student/scripts/portfolio/week3/passwordCheckMM.sh

x=$?


        while [[ $x -eq 0 ]];
        
            do
 
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
    

                read -p "Please select and enter an option from the above choices: " selection




                case $selection in
                1) ~/student/scripts/portfolio/week3/foldermakerMM.sh;;
                2) ~/student/scripts/portfolio/week3/foldercopierMM.sh;;
                3) ~/student/scripts/portfolio/week3/setPasswordMM.sh;;
                4) ~/student/scripts/portfolio/week3/simplecalcMM.sh;;
                5) ~/student/scripts/portfolio/week3/megafoldermakerMM.sh;;
                6) ~/student/scripts/portfolio/week3/filenamesMM.sh;;
                7) ~/student/scripts/portfolio/week3/webDownloaderMM.sh;;
                8) echo "You have chosen to exit the menu. Goodbye."
                    break;
                    ;;
                *) echo "Please select from the listed options."

                esac
        
             done

exit 0
        

    
exit 0