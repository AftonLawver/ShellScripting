#!/bin/bash

if [[ $# -ne 1 ]]
then
	echo "Please enter exactly one argument that is a filename"
	exit 1
fi

filename=$1

#File does exist
if [[ -a $filename ]]
then
	echo "Metadata:  "

	#File exists and is regular
	if [[ -f $filename ]]
	then
		ls -l $filename
		echo ""

		echo "Contents:  "
		cat $filename
		echo ""
	#File exists and is a directory
	elif [[ -d $filename ]]
	then
		ls -l -d $filename
		echo ""
		echo "Number of files:  "
		echo $(( $( ls -l $filename | wc -l ) - 1 ))
		echo ""
	#File exists but is not regular or a directory
	else
		echo "That file is real, but is not regular or a directory"
	fi
#File does not exist
else
	echo "That file does not exist"
	exit 1
fi

#Script is done
