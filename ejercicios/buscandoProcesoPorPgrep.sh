#!/bin/bash
#el siguiente script evalua si el proceso chrome
#esta siendo ejecutado, si así lo fuera notifica
#y finaliza, caso contrario notifica y espera por
# 5 segundos para realizar la verificacion nuevamente



while true
do
	if [ $(ps -ef|grep chrome | wc -l) -ne 0 ]
	then
		echo "chrome esta siendo ejecutado"
		exit 0
	else
		echo "chrome no se esta ejecutando"
	fi

	sleep 5s
done

