#!/bin/bash

while true
do
	proceso=$(ps -aux | grep firefox | wc -l)
	if [ $proceso -ne 0 ]
	then
		killall firefox
		if [ -e ~/practica-shell-script/var/log/my-firefox/my-logs.log ]
		then
			tar -cvzf ~/practica-shell-script/var/log/history ~/practica-shell-script/var/log/my-firefox/*
			rm -R ~/practica-shell-script/var/log/my-firefox
			source ~/practica-shell-script/pila.sh
		fi
	fi
	sleep 5s
done
