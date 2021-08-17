 #!/bin/bash 
#This script will allow a user to copy an existing folder including its contents.
#It will be copied as a new folder with a newly assigned name.

#Ask the user to enter the name of an existing folder they wish to copy.

    read -p "type the name of an existing folder you would like to copy: " folderName   
      
#Entered variable is stored as $folderName. A test is performed to see if the entered folder name already exists.

    if [ -d "$folderName" ]; then

#Request user to type their desired name for the newly created copy of 'folderName'

    read -p "type a new name for the copy of '$folderName': " newFolderName 

#If all conditions are met, copy the folder 'folderName' and its contents. 
#Paste it in the current directory as the newly assigned 'newFolderName'.
      
    cp -r "$folderName" "$newFolderName" 

#Inform the user that their folder 'folderName' has been copied and is named 'newFolderName'.

    echo "Thank you. The folder '$folderName' and its contents has been copied as '$newFolderName' to the current directory."
    exit 0
      
#OR, if the entered variable 'folderName' does not exist in the directory, then print the following error.

    else     
        echo "I couldn't find that folder. Please try again." 
        exit 1
      
fi 
     