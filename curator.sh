#!/bin/bash
if [[ $1 == "" ]];
then
	printf "Usage: $0 (file url)\n"
	exit
else
	printf "$1"
	url=$1
	printf "\nEnter game name: "
	read name
	printf "Enter series: "
	read series
	printf "Enter developer: "
	read developer
	printf "Enter publisher: "
	read publisher
	printf "Enter genre: "
	read genre
	printf "Enter notes: "
	read notes
	printf "Enter author notes: "
	read anotes
	mkdir "$name"
	cd "$name"
	test2=$(echo "${1##http*://}")
	test3=$(echo "${test2%/*.*}")
	mkdir -p content/"$test3"
	printf "Title: $name
Series: $series
Developer: $developer
Publisher: $publisher
Status: Playable
Extreme: No
Genre: $genre
Source: ${test2%%/*}
Launch Command: http://$test3/${1##*/}
Notes: $notes
Author Notes: $anotes" > meta.txt
	cd content/$test3
	wget $1
fi
