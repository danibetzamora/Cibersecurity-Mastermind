#!/bin/bash

if [ ! -d $1 ]; then
    echo "Error: El directorio no existe"
    exit 1
fi

total=0

for f in `ls $1`; do
    #if [ ! -d $f ]; then
    #echo "Recorriendo el fichero $f"
    #fi
    name="$1/$f"
    if [ -f $name ]; then
        bytes=`ls -l $name | sed "s/  */ /g" | cut -d " " -f 5`
        echo "Fichero $name ocupa $bytes"
        (( total = $total + $bytes ))
    fi
done

echo -e "\nTotal: $total"

#-d -> Directorio
#-f -> File o archivo