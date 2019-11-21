#!/bin/bash

printf "K8s NameSpaces: \n"
printf "NameSpaces:  g1 \n"
printf "NameSpaces:  g2 \n"
printf "NameSpaces:  g3 \n"
read ns

case $ns in
	
	g1)
		echo "images-1"+$ns
		;;
	g2)
		echo "images-2"+$ns
		;;
	g3)
		echo "images-3"+$ns
		;;
	g4)
		echo "images-4"+$ns
		;;
	g5)
		echo "images-5"+$ns
		;;
	*)
		echo "others images"+$ns
esac
