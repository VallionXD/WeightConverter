// Weight multipliers
const kgBase: number = 0.453592;
const lbsBase: number = 2.20462;

// User input for conversion type
const conversion: string = prompt("What type of conversion do you need?\n1. KG to LBS\n2. LBS to KG\nSelect an option using numbers (1 or 2): ");

console.log("\n");

// Check conversion type
if (conversion === "1") {
    // Get weight in KG
    const weight: number = parseFloat(prompt("Enter the amount of KG to convert:"));

    // Convert weight to LBS
    const convertedWeight: number = Math.floor((weight * lbsBase) * 10) / 10;

    // Print converted weight
    console.log(`\n${weight} KG = ${convertedWeight} LBS`);
} else if (conversion === "2") {
    // Get weight in LBS
    const weight: number = parseFloat(prompt("Enter the amount of LBS to convert:"));

    // Convert weight to KG
    const convertedWeight: number = Math.floor((weight * kgBase) * 10) / 10;

    // Print converted weight
    console.log(`\n${weight} LBS = ${convertedWeight} KG`);
}

// Inform the user to press enter to exit
console.log("\nPress enter to exit . . .");
