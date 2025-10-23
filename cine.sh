#!/bin/bash
read -n1 -p "¿Tienes 300 pesos? (S/N)" guita

if [ "$guita" = "S" ] ;  then 

        echo "Dale, andá a ver la peli con tus amigos."

else 

        echo "Andá a tu casa a ver una serie online pobre."

fi

