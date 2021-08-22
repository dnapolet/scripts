 #!/bin/bash 

#title           :foldercopier.sh
#description     :This script will allow a user to copy an existing folder including its contents. It will be copied as a new folder with a newly assigned name.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


    read -p "type the name of an existing folder you would like to copy: " folderName # Ask the user to enter the name of an existing folder they wish to copy.
      

        if [ -d "$folderName" ]; # Entered variable is stored as $folderName. A test is performed to see if the entered folder name already exists.
        
                then 
                    read -p "type a new name for the copy of '$folderName': " newFolderName # Request user to type their desired name for the newly created copy of 'folderName'
   
                    cp -r "$folderName" "$newFolderName" # If all conditions are met, copy the folder 'folderName' and its contents into the newly named folder.

                    echo "Thank you. The folder '$folderName' and its contents has been copied as '$newFolderName' to the current directory." # Inform the user that their folder 'folderName' has been copied and is now named 'newFolderName'.
                    
                    exit 0 # Exit with a success code of '0'.
      
                else     
                    echo "I couldn't find that folder. Please try again." # OR, if the entered variable 'folderName' does not exist in the directory, then print the this error.
                    exit 1 # Exit with an error code of '1'.
      
        fi 


# End of script
     