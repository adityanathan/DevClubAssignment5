#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo No arguments given
    exit -1
fi
temp=$(cat $1|grep ".*:.*:.*:.*:.*:.*:.*")
if [[ -z $1 ]] || [[  -z $temp ]] || [[ -z $2 ]] || [[ $1 != *.txt ]]
	then
	echo Invalid input 
	exit -1
fi
cat $1|grep -i "$2"|cut -d ':' -f 5