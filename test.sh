#!/bin/bash
# Este script crea un diálogo de entrada de texto

# La opción --entry crea un cuadro de diálogo para ingresar texto
song=$(zenity --list --title="Seleciona una cancion" --window-icon=/home/roqui/Descargas/Imagenes/perkeo.png --checklist --column "Selecion" --column "Nombre" --column "Artista" --column "Año" \
FALSE Rollin Limp_blizkit 2000\
 FALSE Angry Rovio 2008\
 FALSE Pantera_Rosa Henry_Mancini 1963 )
echo $song
case $song in

 Rollin)
	mpg123 /home/roqui/Descargas/Imagenes/Rollin.mp3
	;;

 Angry) mpg123 /home/roqui/Descargas/Imagenes/Angry_Birds.mp3
	sleep 1.5s
	;;
 Pantera_Rosa) 
		mpg123 /home/roqui/Descargas/Imagenes/PanteraRosa.mp3
		;;
 *) 
	echo "tonto"
;;
esac
