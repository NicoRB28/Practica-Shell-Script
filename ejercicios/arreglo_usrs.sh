#!/bin/bash

#script correspondiente a la practica de ISO 2019
#se genera un array con todos los usuarios integrantes
#del grupo ISO luego si se suministro la opcion -b [posicion]
#si la posicion del array tiene un usuario lo muestra
#si se suministro la opcion -l se muestra la cantidad de
#elementos en la estructura
#si se suministro -i se muestran todos los elementos

arr=($(cat /etc/group |grep ISO| cut -d: -f4| tr "," " "))

if [ $# -gt 0 ]
then
	case $1 in
		"-b")
			if [ $# -ne 2 ]
			then
				echo "error para esta opcion falta un parametro"
				exit 1
			elif [ ${#arr[@]} -gt $2 ]
			then
				echo ${arr[$2]}
			else
				echo "la posicion esta vacia"
				exit 2
			fi

			;;
		"-l")
			echo ${#arr[@]}
			;;
		"-i")
			echo ${arr[@]}
			;;
		*)
			echo "opcion equivocada"
			exit 3
			;;
	esac
fi

