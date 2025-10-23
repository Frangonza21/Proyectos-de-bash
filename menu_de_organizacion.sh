#!/bin/bash
clear
echo "Hola bienvenido a este menu con opciones, primero selecione una carpeta base"
sleep 2
function selcarpar() {
selcar=$( zenity --file-selection \
 --title "Selecione una carpeta" \
 --directory \
 --filename "$1" )
}

function selarchpar() {
selcar=$( zenity --file-selection \
 --title "Selecione un archivo" \ 
 --filename "$1" )
}

function selecarpeta() {
selectorcarpeta=$( zenity --file-selection \
 --title "Selecione una carpeta" \
 --directory \
 --filename "/home/$(whoami)/" )
}
function selecarchivo() {
selectorarchivo=$( zenity --file-selection \
 --title "Selecione un archivo" \
 --filename "/home/$(whoami)/" )
}
selecarpeta
echo "Selecione una operacion"
echo " 1- Listar archivos de la carpeta"
echo " 2- Copiar"
echo " 3- Ver permisos"
echo " *- Salir"
read -n1 -p "Selecion: " selec
cd
echo " "
cd $selectorcarpeta
placecp=$selectorcarpeta
placesel=$selectorcarpeta
case $selec in 

	1)
	ls
	;;

	2)
	read -n1 -p "Desea copiar un archivo(1) o una carpeta(2)? " archiocarp
		case $archiocarp in 
		1)
		selarchpar "$placesel"
		;;
		2)
		selcarpar "$placecp"
		;;
		*)
		echo "Seleciona una opccion de las q te di 1 o 2" 
		;;
		esac

	echo "Selecione a donde quiere copiar lo que seleciono"
	selecarpeta
	echo $selectorcarpeta
	cp -r $selcar $selectorcarpeta
	echo "Archivo copiado correctamente"
	;;

	3)
	ls -l
	;;

	*)

	echo -n "Saliendo"

	for i in {1..3}; do
    	echo -n "."
    	sleep 0.5
	done
	echo " "
	;;

esac

