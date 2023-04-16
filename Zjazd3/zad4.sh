#!/bin/bash

# wyświetlenie menu
echo "Wybierz jedną z opcji:"
echo "c - aktualny katalog"
echo "u - nazwa użytkownika"
echo "h - katalog domowy"

# pobranie wyboru użytkownika
read wybor

# wykonanie odpowiedniej akcji
case $wybor in
  c)
    echo "Aktualny katalog: $(pwd)"
    ;;
  u)
    echo "Nazwa użytkownika: $(whoami)"
    ;;
  h)
    echo "Katalog domowy: $HOME"
    ;;
  *)
    echo "Błędny wybór."
    ;;
esac
