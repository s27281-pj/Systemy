#!/bin/bash

# sprawdzenie, czy podano argument
if [ -z "$1" ]; then
  echo "Błąd: brak nazwy pliku jako argumentu wywołania."
  exit 1
fi

# sprawdzenie, czy plik istnieje
if [ -f "./$1" ]; then
  echo "Plik $1 istnieje w bieżącym katalogu."
else
  echo "Plik $1 nie istnieje w bieżącym katalogu."
fi
