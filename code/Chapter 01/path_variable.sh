#!/bin/bash
#Filename: path_variable.sh
#Description: Playing with PATH variable

echo "Current PATH variable content - $PATH"
echo "Current directory - $PWD"
echo "Content of current directory - `ls`"
PATH=$PATH:$PWD
echo "New PATH variable content - $PATH"
# Now execute commands available in current working diectory
