package main

import (
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	// Weight multipliers
	kgBase := 0.453592
	lbsBase := 2.20462

	// Conversion type
	fmt.Println("What type of conversion do you need?")
	fmt.Println("1. KG to LBS")
	fmt.Println("2. LBS to KG")
	var conversion string
	fmt.Print("Select an option using numbers (1 or 2): ")
	fmt.Scan(&conversion)

	fmt.Println()

	// Check conversion type
	if conversion == "1" {
		// Get weight in KG
		fmt.Print("Enter the amount of KG to convert: ")
		var weight float64
		fmt.Scan(&weight)

		// Convert weight to LBS
		convertedWeight := math.Floor((weight * lbsBase) * 10) / 10

		// Print converted weight
		fmt.Printf("\n%.1f KG = %.1f LBS\n", weight, convertedWeight)
	} else if conversion == "2" {
		// Get weight in LBS
		fmt.Print("Enter the amount of LBS to convert: ")
		var weight float64
		fmt.Scan(&weight)

		// Convert weight to KG
		convertedWeight := math.Floor((weight * kgBase) * 10) / 10

		// Print converted weight
		fmt.Printf("\n%.1f LBS = %.1f KG\n", weight, convertedWeight)
	} else {
		// Exit the program
		os.Exit(0)
	}

	// Inform the user to press enter to exit
	fmt.Println("\nPress enter to exit . . .")
	fmt.Scanln()
}
