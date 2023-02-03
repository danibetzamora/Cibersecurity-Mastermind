#!/bin/bash

error() {
    echo $1
    exit 1
}

if [ $# -ne 2 ]; then
    error "Error: Número de argumentos incorrecto"
fi

if [ ! -d $2 ]; then
    error "Error: El directorio no existe"
fi

for f in `ls $2`; do
    ruta1="$2/$f"
    ruta2="$2/$1-$f"
    mv $ruta1 $ruta2
    echo "$ruta1 -> $ruta2" | tr -s '/'
done

echo -e "\nSe han añadido todos los prefijos"