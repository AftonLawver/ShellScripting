#!/bin/bash

regular_file_count()
{
	echo $(( $( ls -l $1 | wc -l ) - 1 ))
}

total_file_count()
{
	echo $(( $( ls -l -a $1 | wc -l ) - 1 ))
}

if [[ $# -ne 1 ]]
then
	echo "Please enter exactly one filename"
	exit 1
fi

if [[ -d $1 ]]
then
	regular_count=$( regular_file_count $1 )
	total_count=$( total_file_count $1 )

	echo "There are $regular_count regular files and $total_count total files"
	echo ""

	hidden_count=$(( total_count - regular_count ))

	echo "The total number of hidden files is $hidden_count"
	echo ""
else
	echo "That's not a directory"
	exit 1
fi
