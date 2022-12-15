#!/bin/bash

#Indicador estadístico de longitud de palabras (la más corta, la más larga y el
#promedio de longitud).

larga=0
corta=189819 #cantidad de palabras de la palabra más larga que existe
promedio=0
suma=0 
cantidad=0
longitud_palabra=0 

for word in $(cat $1);
  do 
    longitud_palabra=${#word} #para guardar la longitud de la palabra 
    if [[ $longitud_palabra -lt  $corta ]]
    then 
    corta=$longitud_palabra
    fi
    if [[ $longitud_palabra -gt $larga ]]
    then
    larga=$longitud_palabra
    fi
    suma=$((suma+longitud_palabra))
    cantidad=$((cantidad+1))
done

promedio=$((suma/cantidad))

echo "La palabra más larga tiene "$larga "letras."
echo "La palabra más corta tiene "$corta "letras."
echo "En promedio las palabras tienen "$promedio "letras."



