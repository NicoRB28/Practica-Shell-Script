#!/bin/bash


if [ $# -ne 1 ]
then
	echo "cantidad de parametros erronea introducir un path"
	exit 1
fi

if [ -f $1 ]
then
	echo "el path existe y es un archivo regular"
elif [ -d $1 ]
then
	echo "el path existe y es un directorio"
elif [ ! -e $1 ]
then
	echo " el path no existe se creara un directorio con el nombre $1"
	mkdir $1
fi

