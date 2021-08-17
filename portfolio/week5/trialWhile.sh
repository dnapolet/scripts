#!/bin/bash

while IFS='' read password || [ "$password" ]; do

    if test [ ${#password} -ge 8 ]; then
        echo "The entry being tested for complexity is "$password""
        echo "$password" | grep "^[[:alpha:]]"
    fi
    if [ $? = 0 ]; then
        echo "$password" | grep "[A-Z]+"
    fi

done < passwords.txt

