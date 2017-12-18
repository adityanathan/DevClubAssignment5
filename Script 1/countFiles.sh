#!/bin/bash

path=$1
filetype=$2
if [ -n "$2" ]
	then
	if [[ $filetype != '.'* ]]
		then
		echo "Invalid input"
		exit 1
	fi

	echo''
    temp=$(ls -A $path/*$filetype)
    if [ $? -eq 1 ]
    	then
    	echo Error
    	exit 1
    fi
    ls -A $path/*$filetype|wc -l
    
else
	temp=$(ls -A $path)
    if [ $? -eq 1 ]
    	then
    	echo Error
    	exit 1
    fi
	ls -A $path|wc -l
fi
if [ $? -eq 1 ]
    	then
    	echo Error
    	exit 1
    fi
