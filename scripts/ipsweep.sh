#!/bin/bash

#$1 is our user input -> XXX.XXX.XXX
#$ip is our loop counter which xverses 1-254 of an octet

###### INPUT VALIDATION #####
if [ "$1" == "" ]
then 
echo "You forgot an IP address"
echo "Syntax: ./ipsweep.sh 10.10.10"
#############################

####### /24 CIDR NETWORK
else
for ip in `seq 1 254`; do 
ping -c 1 $1.$ip | grep "64" | cut -d " " -f 4 | tr -d ":" & ##>> ~/Desktop/htb/scripts/ip_sweep.txt &
done
fi