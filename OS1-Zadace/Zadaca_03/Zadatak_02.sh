#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Potrebno je proslijediti točno 1 argument."
    exit 1
fi

num="$1"

if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -lt 1 ] || [ "$num" -gt 10 ]; then
    echo "Argument mora biti broj od 1 do 10."
    exit 1
fi

for ((i=1; i<=num; i++)); do
    echo "$i" >> brojevi.txt
done

echo "Datoteka brojevi.txt je kreirana."
