#!/bin/bash
# Filename: loggedin_user_detail.sh
# Description: Collecting information of loggedin users

users_log_file=~/users_log_file.log
echo "List of logged in users list at time `date`" > $users_log_file
users=(`who | cut -d' ' -f1 | sort | uniq`)
echo ${users[*]} >> $users_log_file

for i in ${users[*]}
do
  echo "Processes owned by user $i" >> $users_log_file
  ps u -u $i >> $users_log_file
  echo
done

