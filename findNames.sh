#!/bin/bash

#Identificación de nombres propios (se identifican sólo si están en este formato
#Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
#Ejemplos: Mateo, Estonoesunnombre, Ana.

touch salida.txt salida2.txt   #archivos auxiliares


FILE=$(cat salida.txt)

for palabra in $(cat $1)
do
  if [ ${#palabra} -gt 3 ]
  then
  echo $palabra | tr -d [".",","] >> salida.txt     #remueve signos ortográficos usuales
  grep -o '\<[A-Z][a-z]*\>' salida.txt >> salida2.txt   #filtra con expresión regular que inicie con MAYUSC
  fi
done

echo "Las palabras en mayúscula del texto son:"
sort --uniq salida2.txt   #filtra repetidos y ordena alfabeticamente

rm salida.txt salida2.txt
