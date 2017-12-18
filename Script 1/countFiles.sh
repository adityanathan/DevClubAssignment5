#!/bin/bash

read -p 'Please enter the path of the directory: ' path
echo 'Do you want to search for a particular type of file (y/n) ?'
read choice1
if [ $choice1 = 'y' ]
	then
	read -p 'Please enter the filetype (eg: .txt): ' filetype
	echo''
    ls -A $path/*$filetype|wc -l
    
else
	ls -A $path|wc -l
fi





