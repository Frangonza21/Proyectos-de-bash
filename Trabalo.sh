
#!/bin/bash
echo "Hola, para realizar un vivo en instagram necesitas un par de cosas" 
 read -n1 -p "Tienes datos o wifi con buena conexion?(S/N)" cone 
echo " "
 read -p "Cuanta bateria tienes? (0-100)" bate

if [ "$cone"="S" ] && [ "$cone"="s" ] &&  [ "$bate" -ge 30 ] && [ "$bate" -le 100 ]; then

	echo "Puedes Hacer un live en instagram"
else
	echo "No podes hacer un live en instagram, conseguite un wifi mejor o comprate un cargador"
fi
