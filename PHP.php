<?php
// Weight multipliers
$kgBase = 0.453592;
$lbsBase = 2.20462;

// User input for conversion type
echo "What type of conversion do you need?\n1. KG to LBS\n2. LBS to KG\nSelect an option using numbers (1 or 2): ";
$conversion = trim(fgets(STDIN));

echo "\n";

// Check conversion type
if ($conversion === "1") {
    // Get weight in KG
    echo "Enter the amount of KG to convert: ";
    $weight = (float)trim(fgets(STDIN));

    // Convert weight to LBS
    $convertedWeight = floor(($weight * $lbsBase) * 10) / 10;

    // Print converted weight
    echo "\n{$weight} KG = {$convertedWeight} LBS\n";
} elseif ($conversion === "2") {
    // Get weight in LBS
    echo "Enter the amount of LBS to convert: ";
    $weight = (float)trim(fgets(STDIN));

    // Convert weight to KG
    $convertedWeight = floor(($weight * $kgBase) * 10) / 10;

    // Print converted weight
    echo "\n{$weight} LBS = {$convertedWeight} KG\n";
}

// Inform the user to press enter to exit
echo "\nPress enter to exit . . .";
trim(fgets(STDIN)); // Consume the newline character
?>
