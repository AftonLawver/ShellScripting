#!/bin/bash

echo "Please enter in a file"

read filename

#to use a variable use the $ symbol

#-a tells us if a file exists at all
# -d tells us if a file is a directory
# -f tells us whether the input is a regular file 
# can use semicolon to run a sequence of commands, one after the other.

if [[ -a $filename ]]
then
	if [[ -f $filename ]]
	then 
		echo "Output: "
		ls -l $filename; cat $filename
	elif [[ -d $filename  ]]
	then 
		ls -l -d $filename
		echo "Number of files: "
		ls -il | grep ":" | wc -l
	else 
		echo "That file is real, but is not regular or a directory"
	fi
else 
	echo "That file does not exist"
	exit 1

fi



