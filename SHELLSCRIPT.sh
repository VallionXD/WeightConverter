#!/bin/bash

# Weight multipliers
kgBase=0.453592
lbsBase=2.20462

# User input for conversion type
echo "What type of conversion do you need?"
echo "1. KG to LBS"
echo "2. LBS to KG"
echo -n "Select an option using numbers (1 or 2): "
read conversion

echo

# Check conversion type
if [ "$conversion" = "1" ]; then
    # Get weight in KG
    echo -n "Enter the amount of KG to convert: "
    read weight

    # Convert weight to LBS
    convertedWeight=$(echo "scale=1; $weight * $lbsBase" | bc -l | xargs printf "%.1f")

    # Print converted weight
    echo
    echo "$weight KG = $convertedWeight LBS"
elif [ "$conversion" = "2" ]; then
    # Get weight in LBS
    echo -n "Enter the amount of LBS to convert: "
    read weight

    # Convert weight to KG
    convertedWeight=$(echo "scale=1; $weight * $kgBase" | bc -l | xargs printf "%.1f")

    # Print converted weight
    echo
    echo "$weight LBS = $convertedWeight KG"
fi

# Inform the user to press enter to exit
echo
echo "Press enter to exit . . ."
read
