#!/bin/bash

arr=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
pares=()
impares=0
for ((i=0;i<${#arr[@]};i++))
do
	if [ $(expr ${arr[$i]} % 2) -eq 0 ]
	then
		pares[$i]=${arr[$i]}
	else
		let impares++
	fi
done
echo "la cantidad de impares es: $impares"
echo "los pares fueron: ${pares[@]}"

