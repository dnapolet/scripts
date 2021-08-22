#!/bin/bash


#title           :IpAddressesOnly.sh.sh
#description     :This script will only display the contents from IpInfo.sh that contains an Ip Address.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script


    ./IpInfo.sh | sed -n 's/IP Address/IP Address/p' # Run script 'IpInfo.sh' and pipe output to sed. A substitution is made and those results are printed to the screen.

    exit 0


# End of script