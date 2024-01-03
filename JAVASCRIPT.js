// Weight multipliers
const kgBase = 0.453592;
const lbsBase = 2.20462;

// Prompt user for conversion type
const conversion = prompt("What type of conversion do you need?\n1. KG to LBS\n2. LBS to KG\nSelect an option using numbers (1 or 2): ");

// Check conversion type
if (conversion === "1") {
  // Get weight in KG
  const weight = parseFloat(prompt("Enter the amount of KG to convert:"));

  // Convert weight to LBS
  const convertedWeight = Math.floor((weight * lbsBase) * 10) / 10;

  // Print converted weight
  alert(`${weight} KG = ${convertedWeight} LBS`);
} else if (conversion === "2") {
  // Get weight in LBS
  const weight = parseFloat(prompt("Enter the amount of LBS to convert:"));

  // Convert weight to KG
  const convertedWeight = Math.floor((weight * kgBase) * 10) / 10;

  // Print converted weight
  alert(`${weight} LBS = ${convertedWeight} KG`);
} else {
  // Exit the program if an invalid option is selected
  alert("Invalid option");
}

// Inform the user to press enter to exit
alert("Press OK to exit . . .");
