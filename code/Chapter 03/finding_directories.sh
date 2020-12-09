#!/bin/bash
# Filename: finding_directories.sh
# Description: Print which all files in / are diretcories

echo "Directories in / :"
for file in `ls /`
do
  if [ -d "/"$file ]
  then
     echo -n  "/$file "
  fi
done
echo
