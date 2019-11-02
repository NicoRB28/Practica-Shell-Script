#!/bin/bash

#ISO UNLP 2019
#aprender a sustituir comandos,
#aprender el funcionamiento de expr

if [ $# -ne 2 ]
then
	echo "al menos debe suministrar dos parametros"
	exit 1
fi

echo "$1*$2=$(expr $1 \* $2)"
echo "$1+$2=$(expr $1 + $2)"
echo "$1-$2=$(expr $1 - $2)"
if [ $1 -gt $2 ]
then
	echo "$1 es mayor a $2"
else
	echo "$1 es menor a $2"
fi
