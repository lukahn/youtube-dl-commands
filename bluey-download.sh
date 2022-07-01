#!/bin/bash
# For downloading Bluey. Put the list in list.txt, and append .mp4 to the filename.
# Remember to use dos2unix if coming from Windows
IFS=$'\n'
for line in $(cat list.txt); do
	episode=$(echo $line | cut -d "," -f 1)
	echo $episode
	filename=$(echo $line | cut -d "," -f 2 | sed 's/\"//g')
	echo $filename
	youtube-dl -v "$episode" --all-subs --embed-subs --add-metadata --embed-thumbnail --output "$filename".mp4
	result=$?
	if [ $result -eq 1 ]; then
		echo $line >> unavailable.txt
	fi
done
