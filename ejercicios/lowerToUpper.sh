#!/bin/bash

#ISO UNLP 2019
#imprimir en pantalla los nombres de los archivos
#del directorio actual intercambiando mayusculas por
#minusculas e inversa.

for cada in $(ls)
do
	echo $cada |tr -d 'aA' |tr "[:lower:] [:upper:]" "[:upper:] [:lower:]"
done

