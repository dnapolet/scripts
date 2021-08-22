#!/bin/bash

#title           :filenames.sh
#description     :This script checks against the contents of text file and returns a statement based on the findings.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2

# Start of script


    IFS=$'\n'

        for line in $(cat < filenames.txt) # For each line found in 'filenames.txt'

            do
            
                if [ -f "$line" ]; # If a file is found with name '$line', print the echo statement.
                    then
                        echo "$line : That file exists"
    
                    elif [ -d "$line" ]; # If a directory is found with name '$line', print the echo statement.
                        then
                            echo "$line : That is a directory."
        
                    else # Else, if a nothing is found with name $line, print the echo statement.
                        echo "$line : I'm not sure what that is."
                fi

        done <filenames.txt


# End of script