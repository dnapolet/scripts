#!/bin/bash


#title           :IpInfo.sh
#description     :This script will allow a user to copy an existing folder including its contents. It will be copied as a new folder with a newly assigned name.
#author		     :Damien Napoletano
#date            :20/08/2021
#version         :1.2


# Start of script   


    net_info="$(ifconfig)" # Get info about networking from the ifconfig command.

    # Parse out the ip address lines using sed.

        addresses=$(echo "$net_info" | sed -n '/inet / {

            s/inet/IP Address:/

            s/netmask/\n\t\tSubnet Mask:/

            s/broadcast/\n\t\tBroadcast Address:/

            p

            }')


    echo -e "IP addresses on this computer are:\n$addresses" # Format output.


# End of script