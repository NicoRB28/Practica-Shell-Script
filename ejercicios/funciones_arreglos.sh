#!/bin/bash

#practica ISO UNLP 2019
#operaciones basicas sobre array

inicializar(){
	arr=()
	tam=0
}

agregar_elem(){
	read -p "elemento: " elem
	arr[tam]=$elem
	let tam++
	return 0
}

eliminar_elem(){

	read -p "posicion a eliminar" pos
	if [ ${#arr[@]} -gt $pos ]
	then
		unset arr[$pos]
		let tam--
	else
		echo "posicion invalida"
		return 1
	fi
	return 0

}
longitud(){
	
	echo ${#arr[@]}
	return 0
}

imprimir(){
	echo ${arr[@]}
	return 0
}

inicializar_con_valores(){
	if [ $# -ne 2 ]
	then 
		echo "parametros insuficientes"
		return 3
	else
		tam=$1
		arr=()
		for((i=0;i<$tam;i++))
		do
			arr[$i]=$2
		done
	fi
	return 0	
		
}

select opt in inicializar agregar_elem eliminar_elem longitud imprimir inicializar_con_valores salir
do
	if [ $opt = "salir" ]
	then
		exit 0
	fi
	if [ $opt = "inicializar_con_valores" ]
	then
		read -p "ingrese los valores de tamaño y elemento" tama elem
		$opt $tama $elem
	else
		$opt
	fi
done
