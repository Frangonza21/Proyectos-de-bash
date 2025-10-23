#!/bin/bash
echo "¿Cual es el clima hoy?"
echo "1- Soleado"
echo "2- Lluvioso"
echo "3- Frío"
echo "Cualquier cosa - Traer cafe"
read clima

case $clima in

1)
echo "Van a jugar al fútbol en la plaza"
;;

2)
echo "Van a jugar videojuegos en casa"
;;

3)
echo "Van a ir al cine"
;;

*)
echo "Van a traer un café"
;;
esac
