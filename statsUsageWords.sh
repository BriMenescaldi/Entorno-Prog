#!/bin/bash

#Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
#letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
#más apariciones a la que tiene menos). Es decir, filtrar las palabras que
#tengan al menos 4 letras y de éstas, elegir las 10 más usadas.


for word in $(cat $1);
do 
  if [[ $(($(echo $palabra | wc -m)-1)) -ge 4 ]] #wc -m cuenta la cantidad de caracteres de la plabra
  then
    contador=0
    for word in $(cat $1)
    do
    if [[ $palabra = $word ]]
    then
      contador=$(($contador+1))
    fi
    done
    echo $contador $palabra >> archivo_temporal.txt
   fi
done

#vamos a obtener el archivo temporal con dos columnas en dónde la primer columna
#contiene la cantidad de veces que dicha palabra aparece en el archivo y la segunda
#columna la palabra

#debemos ordenar las palabras de mayor aparición a menor aparición
 
sort -g archivo_temporal.txt > orden.txt #lo ordenada de menor a mayor según el nùmero
 cat orden.txt | uniq > ordenlisto.txt #eliminan las que están líneas que están repetidas
 sort -r ordenlisto.txt > ordenalreves.txt #sort -r ordena al revés
 head ordenalreves.txt #head muestra las primeras 10 líneas
 rm archivo_temporal.txt #eliminamos el temporal para que cuando lo volvamos a ejecutar este limpio
