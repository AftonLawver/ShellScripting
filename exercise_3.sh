#!/bin/bash

clear

filename=$1
ls -l $filename 2> /dev/null
if [[ $? -eq 0 ]] 
then
	echo "Keep going"
else
	exit 1
fi

isDirectory() {


}
