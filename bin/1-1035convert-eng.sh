#!/bin/bash

read -p "Enter a number in the range from 1 to 1035: " number

if ((number >= 1 && number <= 1035)); then
    # Convert from decimal to hexadecimal
    hex=$(printf "%X" $number)
    echo "Number $number in hexadecimal format: 0x$hex"

    # Convert from hexadecimal to decimal
    decimal=$(printf "%d" "$number")
    echo "Number 0x$hex in decimal format: $decimal"
else
    echo "The number is not within the range from 1 to 1035."
fi
