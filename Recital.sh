#!/bin/bash
echo "Buena noche, para pasar al recitaln, necesito entada  y si sos vip"
read -n1 -p "Tienes una entrada contigo? (S/N)" entra
echo ""
read -n1 -p "Sos V.I.P?(S/N)" vip
echo ""
if [ "$entra" = "S" ] || [ "$entra" = "s" ]; then
		if [ "$vip" = "s" ] || [ "$vip" = "S" ]; then
		echo "Podes entrar a la zona V.I.P capo"
	else
		echo "Podes entrar pero no te acerques a la parte vip, plebe"
	fi
else
	echo "lo siento no puedes entrar"
fi 
