#!/bin/sh
# Filename: firefox_memcheck.sh
# Desription: Resatrts application firefix if memory usage is more than 30%

pid=`pidof firefox` # Get pid of firefox
if [ $pid -gt 1 ]
then
  # Get current memory usage of firefox
  current_mem_usage=`ps -u --pid $pid| tail -n1 | tr -s ' ' | cut -d ' ' -f 4`
  # Check if firefox memory  usage is more than 30% or not
  if [ $(echo "$current_mem_usage > 30" | bc) -eq 1 ]
  then
    kill $pid	# Kill firefox if memory usage is > 30%
    firefox &	# Launch firefox
  fi
fi
