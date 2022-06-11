#!/bin/bash
echo $RANDOM | md5sum | head -c 12; echo;
cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 12; echo;
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1
echo $RANDOM | base64 | head -c 20; 
openssl rand -hex 20
openssl rand -base64 21