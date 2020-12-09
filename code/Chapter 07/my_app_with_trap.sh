#!/bin/bash
# Filename: my_app_with_trap.sh
# Description: Reverse a file and perform action on receiving signals

echo "Enter file to be reversed"
read filename

tmpfile="/tmp/tmpfile.txt"
# Delete temporary file on receiving any of signals
# SIGHUP SIGINT SIGABRT SIGTERM SIGQUIT and then exit from script
trap "rm $tmpfile; exit" SIGHUP SIGINT SIGABRT SIGTERM SIGQUIT
# tac command is used to print a file in reverse order
tac $filename > $tmpfile
cp $tmpfile $filename
rm $tmpfile

