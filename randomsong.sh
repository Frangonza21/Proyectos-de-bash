#!/bin/bash
cd /home/roqui/Descargas/Imagenes/BindsSantiago
song=$((RANDOM % 3 + 1))
echo "$song"

case $song in
	1) 
		timeout --preserve-status --foreground 10 mpg123 --skip 563 specialist.mp3
	;;
	
	2)
		timeout --preserve-status --foreground 5 mpg123 LastSurprise.mp3
	;;
	
	3)
		timeout --preserve-status --foreground 6 mpg123 --skip 2242  BurnMyDread.mp3
	;;
esac
