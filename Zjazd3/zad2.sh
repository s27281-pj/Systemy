#!/bin/bash

# wyświetlenie nazwy programu
echo "program nazywa sie: $0"

# wyświetlenie kolejnych argumentów
i=1
for arg in "$@"
do
    echo "param $i: $arg"
    ((i++))
done

# wyświetlenie wszystkich argumentów
echo "param*: $*"

# wyświetlenie liczby argumentów
echo "param#: $#"

# wyświetlenie ID procesu
echo "proc PID: $$"
