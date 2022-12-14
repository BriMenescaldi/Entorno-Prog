#!/bin/bash

source statsWords.sh
source statsUsageWords.sh
source findNames.sh
source statsSentences.sh
source blankLinesCounter.sh

TEXTO=texto.txt

PS3='>> '
echo "Elija una opción"
select opcion in "Palabras" "Uso_de_palabras" "Nombres" "Oraciones" "Lineas_en_blanco" "SALIR"
do
	[ -e $opcion ] && echo "Elija una opción válida" && continue
	[ $REPLY == 6 ] && echo "Hasta luego, vuelva prontos" && break
	echo "Usted esta viendo estadísticas sobre " $opcion
	
	case $REPLY in 
	  1) statsWords $TEXTO;;
	  2) statsUsageWords $TEXTO;;
	  3) findNames $TEXTO;;
	  4) statsSentences $TEXTO;;
	  5) blankLinesCounter $TEXTO;;
	esac
done

exit 0
