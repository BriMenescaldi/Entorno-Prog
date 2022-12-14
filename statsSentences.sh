#!/bin/bash

#Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
#promedio de longitud).

cantidad_letras=0
cantidad_oraciones=0
longitud_minima=1000
longitud_maxima=0
suma_longitud=0

for palabra in $(cat $1)
do
    [[ ! $palabra =~ ['.']$ ]] && cantidad_letras=$(($(echo $palabra | wc -m)-1+cantidad_letras))

       if [[ $palabra =~ ['.']$ ]]
       then
             cantidad_letras=$(($(echo $palabra | wc -m)-2+cantidad_letras))
             [[ $cantidad_letras -lt $min_longitud ]] && longitud_minima=$cantidad_letras
             [[ $cantidad_letras -gt $max_longitud ]] && longitud_maxima=$cantidad_letras
             cantidad_oraciones=$((cantidad_oraciones+1))
             suma_longitud=$((cantidad_letras+suma_longitud))
             cantidad_letras=0
        fi
   done

   echo La oración más corta tiene $longitud_minima letras
   echo La oración más larga tiene $longitud_maxima letras
   echo El promedio de longitud de oraciones es $((suma_longitud/cantidad_oraciones))
