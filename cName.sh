
#!/bin/bash

# pobierz nazwę skryptu
script_name=$(basename "$0")

# wyrażenie regularne do dopasowania końcówki pliku
regex=".*\.sh$"

if [[ "$script_name" =~ $regex ]]; then
  echo "Nazwa pliku jest poprawna."
else
  echo "Nazwa pliku jest niepoprawna. Zmieniam nazwę pliku..."

  # dopisz końcówkę .sh do nazwy pliku
  new_name="$script_name.sh"

  # zmień nazwę pliku
  mv "$script_name" "$new_name"

  echo "Nowa nazwa pliku to: $new_name"
