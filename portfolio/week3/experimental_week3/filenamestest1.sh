#!/bin/bash


while read line;

do
    if [ -e "$line" ];
        then
            echo "$line file exists"
        elif [ -d "$line" ]
            then
                echo "$line is a directory";
        else
            echo "I dont know what $line is"
    fi

done <"$1"