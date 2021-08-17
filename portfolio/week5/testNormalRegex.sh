#!/bin/bash

while IFS='' read -r password || [ "$password" ]; 
do

    "$password" | grep "[A-Z]+"

done < passwords.txt

