#!/bin/bash

duration_in_minutes=60
(
for i in {1..60} 
do	
	echo $i
	sleep 60 
done
) |
zenity --progress \
	--title="Pomodoro Timer" \
	--text="00:00"
# zenity --notification --text "Hello World!"
