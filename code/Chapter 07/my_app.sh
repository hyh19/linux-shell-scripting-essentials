#!/bin/bash
# Filename: my_app.sh
# Description: Reverse a file

echo "Enter file to be reversed"
read filename

tmpfile="/tmp/tmpfile.txt"
# tac command is used to print a file in reverse order
tac $filename > $tmpfile
cp $tmpfile $filename
rm $tmpfile

