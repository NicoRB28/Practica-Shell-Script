#!/bin/bash


if [ $# -ne 3 ]
then
	echo "debe ingresar un directorio, una opcion [-a][-b] y una cadena"
	exit 1
fi
if [ ! -d $1 ]
then
	echo "error el directorio ingresado no existe"
	exit 3
fi
if [ -z $3 ]
then
	echo "error la cadena intorducida es nula"
	exit 4
fi

case $2 in
	"-a")
		for archivos in $(ls $1)
		do
			mv $1/$archivos $1/$archivos$3
		done
		;;
	"-b")
		for archivos in $(ls $1)
		do
			mv $1/$archivos $1/$3$archivos
		done
		;;
	*)
		echo "opcion incorrecta"
		exit 2
		;;
esac



