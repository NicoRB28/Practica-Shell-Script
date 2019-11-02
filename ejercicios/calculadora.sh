#!/bin/bash
#ejercicio correspondiente a la practica 
#de ISO UNLP 2019
#se debia realizar una calculadora con 
#opciones

if [ $# -ne 3 ]
then
	echo "parametros insuficientes"
	exit 1
fi
 opt=$2
case $opt in
		"+")
			
			echo "$(expr $1 + $3)"
		
		;;
		"-")
			
			echo "$(expr $1 - $3)"
			
			;;
		"x")
				
				echo "$(expr $1 \* $3)"
				
			;;
		"/")
			
			echo "$(expr $1 / $3)"
			
		;;	
		*)
			
			echo "operador erroneo"
			exit 2
			;;
	esac



