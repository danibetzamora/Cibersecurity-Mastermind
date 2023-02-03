#!/bin/bash

error() {
    echo $1
    exit 1
}

if [ $# -ne 4 ]; then
    error "Error: Número de argumentos incorrecto"
fi

if [ $3 -le 0 ]; then
    error"Error: Debe crear al menos 1 fichero"
fi

if [ ! -d $4 ]; then
    error "Error: El directorio no existe"
fi

for (( i=1; i<= $3; i++ )); do
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    touch $name
done

echo "Se han creado todos los ficheros con éxito!"