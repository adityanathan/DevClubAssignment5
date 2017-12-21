#!/bin/bash
syncf(){
path1=$(diff -r "$1" "$2"|grep "Only in"|grep "$1"|cut -d ':' -f 1| cut -d ' ' -f 3)
counter=1
echo "Files copied from $1 to $2 are:"
for var in $path1
do 
    filvar=$(diff -r "$1" "$2"|grep "Only in"|grep "$1"|cut -d ':' -f 2|sed s/' '/''/g|head -$counter|tail -1)
    altfilpath=$(echo $path1|sed s/"$1\/"/''/g|cut -d ' ' -f $counter)
if [[ $1 == $var ]]
then
    cp "$1/$filvar" "$2/$filvar"
    echo "$filvar"
else
    cp "$1/$filvar" "$2/$altfilpath/$filvar"
    echo "$altfilpath/$filvar"
fi
let counter++
done
}

syncf $1 $2
syncf $2 $1



