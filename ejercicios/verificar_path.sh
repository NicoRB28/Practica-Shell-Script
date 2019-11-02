#!/bin/bash


if [ $# -lt 1 ]
then
	echo "error al menos debe suministrar un parametro"
	exit 1
fi
arr=($*)
inexistentes=0

for((i=0;i<${#arr[@]};i++))
do
	if [ $(expr $i % 2) -ne 0 ]
	then
		if [ -e ${arr[$i]} ]
		then
			if [ -f ${arr[$i]} ]
			then
				echo " ${arr[$i]} es un archivo regular"
			elif [ -d ${arr[$i]} ]
			then
				echo "${arr[$i]} es un directorio"
			fi
		else
			let inexistentes++
		fi
	fi
done
echo $inexistentes
