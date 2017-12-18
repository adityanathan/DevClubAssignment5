#!/bin/bash
fi=$1
let "no_of_lines=$(cat $fi|wc -w)/2"
counter=1
result=0
while [[ $counter -le $no_of_lines ]]
do
  read number operator
	 case $operator in 
	 	    +)
           let result=result+$number
           ;;
        -)
           let result=result-$number
           ;;
        \*)
           let result=result\*$number
           ;;
        /)
           let result=result/$number
           ;;
        *)
          echo Invalid Input
          exit 1
           ;;
       
      esac
	let counter++
done < $fi
echo $result
