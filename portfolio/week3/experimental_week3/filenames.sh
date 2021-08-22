#!/bin/bash

IFS=$'\n'

for line in $(cat < $1)

do
    if [ -f "$line" ];
        then
            echo "$line : That file exists"
    elif [ -d "$line" ];
        then
            echo "$line : That is a directory."
    else
        echo "$line : I'm not sure what that is."
    fi

done <"$1"