#!/bin/bash

read -p "Choose an option (1 - binary to decimal, 2 - decimal to binary): " option

if [ "$option" -eq 1 ]; then
    # Conversion from binary to decimal
    read -p "Enter a 33-bit binary value: " binary_value
    if [[ ${#binary_value} -ne 33 ]]; then
        echo "Error: Please enter exactly 33 bits."
        exit 1
    fi

    decimal_value=0
    for ((i = 0; i < 33; i++)); do
        bit="${binary_value:i:1}"
        if [[ "$bit" -eq 1 ]]; then
            decimal_value=$((decimal_value + 2**(32 - i)))
        fi
    done

    echo "Decimal value is: $decimal_value"
elif [ "$option" -eq 2 ]; then
    # Conversion from decimal to binary
    read -p "Enter a decimal value: " decimal_value
    if ((decimal_value < 0 || decimal_value >= 2**33)); then
        echo "Error: Decimal value is out of the range 0-8589934591."
        exit 1
    fi

    binary_value=""
    for ((i = 32; i >= 0; i--)); do
        if ((decimal_value >= 2**i)); then
            binary_value+="1"
            decimal_value=$((decimal_value - 2**i))
        else
            binary_value+="0"
        fi
    done

    echo "Binary value is: $binary_value"
else
    echo "Error: Please choose a valid option (1 or 2)."
    exit 1
fi
