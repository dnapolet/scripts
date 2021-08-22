#!/bin/bash


#title           :AwkFormat.sh
#description     :This script takes the contents of 'input.txt' and formats it nicely.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script


    echo "Google Server IPs:"

    # Formatting the column headers, followed by how the contents of 'input.txt' will be displayed.
    awk 'BEGIN {

        FS=":";

        print "________________________________";

        print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m             |";

    }

    {

        printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);

    }

    END {

        print("________________________________");

    }' input.txt


# End of script