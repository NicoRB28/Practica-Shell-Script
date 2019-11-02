#!/bin/bash

#Script realizado en funcion de 
#la practica de ISO UNLP 2019
#busca todos los archivos con extensión .doc 
#en el directorio home y los agrega a un vector
#luego muestra un menu permitiendo
#ver el contenido de un archivo si el mismo fue encontrado
#visualizar la cantidad de archivos .doc encontrados
#eliminar un archivo logicamente de la estructura o 
#eliminarlo del file system
#por ultimo permite visualizar todos los nombres de archivos .doc
#en la estructura


arr=($(find /home -name *.doc))



select opt in verArchivo cantidadArchivos borrarArchivo verTodo salir
do
	case $opt in
		"verArchivo")
			read -p "nombre del archivo" arch
			for ((i=0;i<${#arr[@]};i++))
			do
				if [ ${arr[$i]} = $arch ]
				then
					cat ${arr[$i]}
					exit 0
				fi
				echo "el archivo no se encontro en la estructura"
				exit 5
			done
			;;
		"cantidadArchivos")
			echo ${#arr[@]}
			;;
		"borrarArchivo")
			read -p "ingrese el nombre del archivo" arch
			read -p "desea eliminar el archivo logicamente? si-no" resp
			if [ $resp = "si" ]
			then
				for ((i=0;i<${#arr[@]};i++))
				do
					if [ ${arr[$i]} = $arch ]
					then
						unset arr[$i]
						exit 0
					fi
				done
				echo "el archivo no se encontro en la estructura"
				exit 10
			else
				for ((i=0;i<${#arr[@]};i++))
				do
					if [ ${arr[$i]} = $arch ]
					then
						rm -r ${arr[$i]}
						unset arr[$i]
						exit 0
					fi
				done
				echo "el archivo no se encontro en la estructura"
				exit 10
			fi
			;;
		"verTodo")
			echo ${arr[@]}
			;;
		"salir")
			exit 0
			;;
	esac
done
