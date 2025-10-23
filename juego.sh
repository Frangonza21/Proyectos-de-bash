#!/bin/bash

read -p "¿Tienes buena conexión? (S/N)" cone

if [ "$cone" = "S" ] ;  then 

        echo "¡Puedes jugar al juego!"

else 

        echo "No puedes jugar al juego, solo puedes jugar el modo práctica."

fi
