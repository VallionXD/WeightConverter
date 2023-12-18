// Weight multipliers
let kgBase = 0.453592
let lbsBase = 2.20462

// User input for conversion type
printfn "What type of conversion do you need?"
printfn "1. KG to LBS"
printfn "2. LBS to KG"
printf "Select an option using numbers (1 or 2): "
let conversion = System.Console.ReadLine()

printfn ""

// Check conversion type
if conversion = "1" then
    // Get weight in KG
    printf "Enter the amount of KG to convert: "
    let weight = float (System.Console.ReadLine())

    // Convert weight to LBS
    let convertedWeight = Math.Floor(weight * lbsBase * 10.0) / 10.0

    // Print converted weight
    printfn "\n%f KG = %f LBS" weight convertedWeight
elif conversion = "2" then
    // Get weight in LBS
    printf "Enter the amount of LBS to convert: "
    let weight = float (System.Console.ReadLine())

    // Convert weight to KG
    let convertedWeight = Math.Floor(weight * kgBase * 10.0) / 10.0

    // Print converted weight
    printfn "\n%f LBS = %f KG" weight convertedWeight
else
    printfn "Invalid option"
