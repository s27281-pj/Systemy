#!/bin/bash

# wyświetlenie menu
echo "Wybierz jedną z opcji:"
echo "m - ilość pozostałego wolnego miejsca na bieżącej partycji"
echo "p - ile pamięci zużywają procesy"
echo "v - proces, który zużywa najwięcej pamięci"

# pobranie wyboru użytkownika
read wybor

# wykonanie odpowiedniej akcji
case $wybor in
  m)
    echo "Pozostało wolnego miejsca: $(df -h . | awk '{print $4}' | tail -1)"
    ;;
  p)
    echo "Ilość pamięci zużywanej przez procesy: $(ps -eo pmem | awk '{sum += $1} END {print sum}')"
    ;;
  v)
    echo "Proces, który zużywa najwięcej pamięci:"
    ps -eo pid,pmem,cmd --sort=-pmem | head -2 | tail -1
    ;;
  *)
    echo "Błędny wybór."
    ;;
esac

