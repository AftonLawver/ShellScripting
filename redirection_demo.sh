#!/bin/bash

clear

i=1
while [[ i -gt 0 ]]
do
	ls -l "${i}.txt" 2> /dev/null
	
	if [[ $? -ne 0 ]]
	then 
		touch "${i}.txt"
		break
	fi	
done
