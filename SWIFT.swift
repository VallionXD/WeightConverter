import Foundation

// Weight multipliers
let kgBase = 0.453592
let lbsBase = 2.20462

// User input for conversion type
print("What type of conversion do you need?")
print("1. KG to LBS")
print("2. LBS to KG")
if let conversion = readLine() {
    print()

    // Check conversion type
    if conversion == "1" {
        // Get weight in KG
        print("Enter the amount of KG to convert: ")
        if let input = readLine(), let weight = Double(input) {
            // Convert KG to LBS
            let convertedWeight = round((weight * lbsBase) * 10) / 10

            // Print converted weight
            print("\n\(weight) KG = \(convertedWeight) LBS")
        }
    } else if conversion == "2" {
        // Get weight in LBS
        print("Enter the amount of LBS to convert: ")
        if let input = readLine(), let weight = Double(input) {
            // Convert LBS to KG
            let convertedWeight = round((weight * kgBase) * 10) / 10

            // Print converted weight
            print("\n\(weight) LBS = \(convertedWeight) KG")
        }
    }
}
