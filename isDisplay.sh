#!/bin/bash

if [ -f "SOP_display.sh" ]; then
  echo "Plik SOP_display.sh istnieje w bieżącym katalogu. Wykonywanie..."
  ./SOP_display.sh
elif [ "$#" -eq 1 ] && [ -f "$1" ]; then
  echo "Wykonywanie pliku $1..."
  ./"$1"
else
  echo "Błąd: Brak pliku do wykonania."
fi

