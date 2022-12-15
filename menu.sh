#!/bin/bash

TEXTO=texto.txt
echo Bandera3
PS3='>> '
echo "Elija una opción"
select opcion in "Palabras" "Uso_de_palabras" "Nombres" "Oraciones" "Lineas_en_blanco" "SALIR"
do
	[ -e $opcion ] && echo "Elija una opción válida" && continue
	[ $REPLY == 6 ] && echo "Hasta luego, vuelva prontos" && break
	echo "Usted esta viendo estadísticas sobre " $opcion
	
	case $REPLY in 
	  1) ./statsWords.sh $TEXTO;;
	  2) ./statsUsageWords.sh $TEXTO;;
	  3) ./findNames.sh $TEXTO;;
	  4) ./statsSentences.sh $TEXTO;;
	  5) ./blankLinesCounter.sh $TEXTO;;
	esac
done

exit 0
