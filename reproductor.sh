#!/bin/bash

selector=$( zenity --file-selection \
 --title "Selecione archivos para reproducir" \
 --filename "/home/$(whoami)/" )

echo "$selector"
if [[ "$selector" == *.mp3 ]]; then
	mpg123 "$selector"
else
	echo "Agarrá un .mp3 la siguiente, payaso."
fi
