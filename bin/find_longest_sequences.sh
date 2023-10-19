#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Użycie: $0 <plik_binarny>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Podany plik nie istnieje."
  exit 1
fi

binary_file="$1"

# Odczytaj zawartość pliku binarnego
binary_data=$(cat "$binary_file")

# Zainicjuj zmienne dla najdłuższego wystąpienia 0 i 1
max_zeros=0
max_ones=0

# Zlicz najdłuższe wystąpienia 0 i 1
current_zeros=0
current_ones=0

for ((i = 0; i < ${#binary_data}; i++)); do
  char="${binary_data:i:1}"
  if [ "$char" == "0" ]; then
    ((current_zeros++))
    current_ones=0
  elif [ "$char" == "1" ]; then
    ((current_ones++))
    current_zeros=0
  fi

  if [ "$current_zeros" -gt "$max_zeros" ]; then
    max_zeros=$current_zeros
  fi

  if [ "$current_ones" -gt "$max_ones" ]; then
    max_ones=$current_ones
  fi
done

# Wyświetl wyniki
echo "Najdłuższe wystąpienie 0: $max_zeros"
echo "Najdłuższe wystąpienie 1: $max_ones"
