// libraries
import "dart:io";

// weight multipliers
const kgBase = .453592;
const lbsBase = 2.20462;

// conversion type
String? conversion;

// weight values
double? weight;
double? convertedWeight;

void main() {
    // get the type of conversion that the user needs
    stdout.write("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ");
    conversion = stdin.readLineSync();
    
    // check conversion type
    print("\n");
    if (conversion == '1') {
        // get weight
        stdout.write("Enter the amount of KG to convert : ");
        weight = double.parse(stdin.readLineSync()!);

        // convert weight to lbs
        convertedWeight = (((weight! * lbsBase) * 10).round() / 10);

        // print converted weight
        print("\n${weight} KG = ${convertedWeight} LBS");
    } else if (conversion == '2') {
        // get weight
        stdout.write("Enter the amount of LBS to convert : ");
        weight = double.parse(stdin.readLineSync()!);

        // convert weight to kg
        convertedWeight = (((weight! * kgBase).round() * 10) / 10);

        // print converted weight
        print("\n${weight} LBS = ${convertedWeight} KG");
    } else {
        exit(0);
    }
    
    // exit program
    stdout.write("\nPress enter to exit . . .");
    stdin.readLineSync();
}
