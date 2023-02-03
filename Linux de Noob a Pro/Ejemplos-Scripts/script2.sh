#!/bin/bash

echo -n "Escribe un número: "
read valor

if [[ $valor -gt 5 ]]; then
    echo "Tu número es mayor que 5"
else    
    echo "Tu número es menor o igual a 5"
fi

#gt -> greater than
#lt -> lower than
#ge -> greater or equal
#le -> lower or equal
#eq -> equal
#ne -> not equal
