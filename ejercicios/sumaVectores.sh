#!/bin/bash


arr1=(1 2 3 4 5 6 7 8)
arr2=(1 2 3 4 5 6 7 8)
arr3=()

if [ ${#arr1[@]} -ne ${#arr2[@]} ]
then
	echo "los vectores no son del mismo tamaño"
	exit 1
fi


tot=0
for ((i=0;i<${#arr1[@]};i++))
do
	arr3[$i]=$(expr ${arr1[$i]} + ${arr2[$i]})
done

for((i=0;i<${#arr3[@]};i++))
do
	echo "la suma de los elementos en la posicion $i de los vectores es ${arr3[$i]}"
done
