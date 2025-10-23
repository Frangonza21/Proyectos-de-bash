#!/bin/bash
echo "Bienvenido al torneo"
read -n1 -p "¿Cuantos años tienes? (0-100)" edad
read -n1 -p "¿Tienes entrada? (S/N)" entrada
read -n1 -p "¿Eres VIP? (S/N)" vip
if ( [ "$edad" -ge 13 ] && [ "$entrada" = "S" ] ) || [ "$vip" = "S" ] ; then
        echo "Dale bro pasa"
else
        echo "Pa fuera pa"
fi
