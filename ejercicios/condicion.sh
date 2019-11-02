#!/bin/bash

#practicando condicionales y lectura
#de parametros


if [ $# -eq 0 ]
then
	echo "faltan parametros"
	exit 1
elif [ $# -gt 3 ]
then
	echo " sobran parametros"
	exit 2
fi

echo "$*"
exit 0

