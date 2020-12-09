#!/bin/bash
# Filename: passwd_file_info.sh
# Desciption: Fetches useful information from /etc/passwd file using awk

# Fetching 1st and 3rd field i.e. Username and UID and separate them with blank space
awk -F":" '{ print "Username: " $1 "\tUID:" $3 }' passwd

# Searching line whose user is root
echo "User root information"
awk '$1 ~ /^root/' passwd

