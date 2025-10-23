x#!/bin/bas

echo "Calculador de pizzas"
read -p "Cantidad de amigos que vinieron a comer " amigos
comidostotales=0
for (( i=1; i<=amigos; i++)); do
read -p "Cuantas porciones comio el amigo Nro $i? " comen
((comidostotales+=comen))
done

read -p "Cantidad de pizzas que pideron " pizzas
porcionestotales=0
for (( i=1; i<=pizzas; i++)); do
read -p "Cuantas porciones partieron la pizza Nro $i? " porcion
((porcionestotales+=porcion))
done

total=$(($porcionestotales-$comidostotales))
if [[ $comidostotales -gt $porcionestotales ]]; then
echo "Altos muertos de hambre"
else
echo "En total sobraron $total y comieron $comidostotales"
fi
