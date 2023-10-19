#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Sposób użycia: $0 <rozmiar w MB> <nazwa pliku>"
    exit 1
fi

rozmiar_mb="$1"
nazwa_pliku="$2"

# Oblicz rozmiar w bajtach (1 MB = 1024 * 1024 bajtów)
rozmiar_bajty=$((rozmiar_mb * 1024 * 1024))

# Generuj losowe dane binarne (0 i 1) i zapisz do pliku
head -c $rozmiar_bajty /dev/urandom | tr -dc '01' > "$nazwa_pliku"

echo "Utworzono plik $nazwa_pliku o rozmiarze $rozmiar_mb MB w formie tekstu z zerami i jedynkami."
