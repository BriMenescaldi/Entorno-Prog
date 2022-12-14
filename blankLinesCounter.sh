#!/bin/bash

#Contador de líneas en blanco.


total_lineas=$(cat $1 | wc -l)
lineas_con_contenido=$(cat  $1 | grep . | wc -l)  #grep . matchea todas las líneas que contengan algún caracter
total_lineas_blanco=$((total_lineas-lineas_con_contenido))

echo La cantidad de líneas en blanco es $total_lineas_blanco
