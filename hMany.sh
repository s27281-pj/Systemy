#!/bin/bash

# zliczenie plików w bieżącym katalogu
file_count=$(ls | wc -l)

# sprawdzenie, czy jest więcej niż 5 plików
if [ "$file_count" -gt 5 ]; then
  echo "W bieżącym katalogu jest więcej niż 5 plików."
fi
