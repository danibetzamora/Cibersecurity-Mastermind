#!/bin/bash

echo -n "Escribe un número: "
read Limite

for (( i = 0; i < $Limite; i++ )); do
    echo $i
done