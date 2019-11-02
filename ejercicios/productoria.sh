#!/bin/bash

arr=(10 3 5 7 9 3 5 4)
res=${arr[0]}

productoria(){
	
	for ((i=1;i<${#arr[@]};i++))
	do
		res=$(expr $res \* ${arr[$i]})
	done
}

productoria
echo $res


