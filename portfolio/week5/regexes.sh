#!/bin/bash

# A collection of grep statments in order to find the following:



# All sed statements:

    grep -r "^sed"

# All lines that start with the letter 'm':

    grep -r "^m"

# All lines that contain three digit numbers

    # The below matches three consecutive numbers, even if part of a larger number
    
    grep -r "[0-9][0-9][0-9]"

# This codes provides a match for exactly three characters on their own (I had to make a text file containing these strings as none were found otherwise)

grep -r '^[0-9]\{3\}$'


# All echo statements with at least three words

grep -r echo[[:space:]]\"*[a-zA-Z][[:alpha:]]*[[:space:]][a-zA-Z][[:alpha:]]*[[:space:]][a-zA-Z][[:alpha:]]*


# All lines that would make a good password

grep -r [A-Z+]
grep -r [[:upper:]]+[[:punct:]]+[A-Za-z1-9]{8,}
grep -r [A-Z+][[:punct:]+][A-Z,a-z]*
grep -r [[A-Z+][[:punct:]+]

One check at the time:

# Check for 1 or more capital letters in the line

grep [A-Z+] numbers.txt

# Checks for lower case letters in the line

grep [[:lower:]] numbers.txt
