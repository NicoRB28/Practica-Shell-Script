#!/bin/bash

#implementacion de pila

init(){

	arr=()
	tam=0
}
push(){
	read -p "introducir elemento" elem
	arr[tam]=$elem
	let tam++
}
pop(){
	if [ $tam -ge 1 ]
	then
		let tam--
		echo "${arr[tam]}"
		unset arr[tam]
	fi
}
length(){

	echo ${#arr[@]}
}
print(){
	echo ${arr[@]}
}

select opt in init push pop length salir print 
do 
	if [ $opt = "salir" ]
	then
		exit 0
	fi
	$opt
done
