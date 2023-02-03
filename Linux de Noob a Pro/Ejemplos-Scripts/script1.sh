#!/bin/bash

#-n sirve para que no salte a la siguiente líne después
#de ejecutar el "echo"
echo -n "Instalar programa? [s/n]: "
read resultado

if [[ $resultado == [sS] ]]; then
    echo "Instalando programa..."
elif [[ $resultado == [nN] ]]; then
    echo "El programa no se va a instalar"
else
    echo "La opción introducida no es válida"
fi