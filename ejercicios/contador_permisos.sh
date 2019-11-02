#!/bin/bash
#ejercicio correspondiente a la practica 
#de ISO 2019 UNLP
#se debia suministrar un directorio
#verificar que el mismo sea un directorio
#existende dentro del sistema
#recorrer sus archivos e informar
#cuantos de ellos tienen permiso de escritura
#y cuantos de ellos tienen permiso de lectura
if [ $# -ne 1 ]
then
	echo "debe suministrar un directorio"
	exit 1
fi
if [ ! -d $1 ]
then
	echo "el directorio no existe"
	exit 4
fi
escritura=0
lectura=0

for i in $(ls $1)
do
	
	if [ ! -d $i ]
	then
	
		if [ -r $i ]
		then
			let lectura++
		fi
		if [ -w $i ]
		then
			let escritura++
		fi
	fi
done
echo "la cantidad de archivos con permiso de escritura es: $escritura"
echo "la cantidad de archivos con permisos de lectura es: $lectura"
