#!/bin/bash

# Funkcja konwertująca ciąg bitów na kolor RGB
bin_to_rgb() {
  binary_value="$1"
  r=$((2#${binary_value:0:8}))
  g=$((2#${binary_value:8:8}))
  b=$((2#${binary_value:16:8}))
  echo "RGB: $r, $g, $b"
}

# Funkcja konwertująca kolor RGB na ciąg bitów
rgb_to_bin() {
  r="$1"
  g="$2"
  b="$3"
  binary_value=$(printf "%08s%08s%08s" $(echo "obase=2; ibase=10; $r" | bc) $(echo "obase=2; ibase=10; $g" | bc) $(echo "obase=2; ibase=10; $b" | bc))
  echo "Binarna wartość: $binary_value"
}

# Sprawdzenie liczby argumentów
if [ "$#" -eq 2 ]; then
  if [ "$1" = "--bin" ]; then
    bin_to_rgb "$2"
  elif [ "$1" = "--rgb" ]; then
    rgb_values=($2)
    rgb_to_bin "${rgb_values[0]}" "${rgb_values[1]}" "${rgb_values[2]}"
  else
    echo "Użycie: $0 [--bin|--rgb] <wartość>"
    exit 1
  fi
else
  echo "Użycie: $0 [--bin|--rgb] <wartość>"
  exit 1
fi

