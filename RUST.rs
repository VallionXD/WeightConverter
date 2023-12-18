use std::io::{self, Write};

fn main() {
    // Weight multipliers
    let kg_base = 0.453592;
    let lbs_base = 2.20462;

    // Conversion type
    println!("What type of conversion do you need?");
    println!("1. KG to LBS");
    println!("2. LBS to KG");

    let mut conversion = String::new();
    print!("Select an option using numbers (1 or 2): ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut conversion).expect("Failed to read line");

    println!();

    // Check conversion type
    if conversion.trim() == "1" {
        // Get weight in KG
        print!("Enter the amount of KG to convert: ");
        io::stdout().flush().unwrap();
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        let weight: f64 = input.trim().parse().expect("Invalid input");

        // Convert weight to LBS
        let converted_weight = ((weight * lbs_base).floor() * 10.0) / 10.0;

        // Print converted weight
        println!("\n{} KG = {} LBS", weight, converted_weight);
    } else if conversion.trim() == "2" {
        // Get weight in LBS
        print!("Enter the amount of LBS to convert: ");
        io::stdout().flush().unwrap();
        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Failed to read line");
        let weight: f64 = input.trim().parse().expect("Invalid input");

        // Convert weight to KG
        let converted_weight = ((weight * kg_base).floor() * 10.0) / 10.0;

        // Print converted weight
        println!("\n{} LBS = {} KG", weight, converted_weight);
    } else {
        // Exit the program
        std::process::exit(0);
    }

    // Inform the user to press enter to exit
    println!("\nPress enter to exit . . .");
    let _ = io::stdin().read_line(&mut String::new());
}
