#!/bin/bash

# sprawdzenie, czy podano co najmniej jeden parametr
if [ $# -lt 1 ]; then
  echo "Nie podano żadnych parametrów"
else
  # pobranie pierwszego parametru
  param1=$(echo "$1" | sed 's/\(.*\)/\1/')

  # sprawdzenie, czy podano więcej niż jeden parametr
  if [ $# -gt 1 ]; then
    echo "Podano więcej niż jeden parametr"
  else
    echo "Pierwszy parametr: $param1"
  fi
fi
