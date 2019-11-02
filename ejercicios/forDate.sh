#!/bin/bash
#script realizado para probar el comando date


for ((i=0;i<5;i++))
do

	printf "$(whoami) \t $(date)\n" >> texto.txt
done
