#!/bin/bash

path=$1
filetype=$2
if [ -n "$2" ]
	then
	if [[ $filetype != '.'* ]]
		then
		echo "Invalid input"
		exit -1
	fi

	echo''
    ls -A $path/*$filetype|wc -l
 
else
	ls -A $path|wc -l
fi