// libraries
import std.math.rounding;
import core.stdc.stdlib;
import std.string;
import std.stdio;
import std.conv;

// weight multipliers
const double kgBase = .453592;
const double lbsBase = 2.20462;

// conversion type
string conversion;

// weight values
double weight;
double convertedWeight;

void main()
{
    // get the type of conversion that the user needs
    write("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ");
    conversion = readln().chomp;
    
    // check conversion type
    writeln("\n");
    if (conversion == "1") {
        // get weight
        write("Enter the amount of KG to convert : ");
        weight = to!double(readln().chomp);

        // convert weight to lbs
        convertedWeight = (nearbyint((weight * lbsBase) * 10) / 10);

        // print converted weight
        writefln("\n%s KG = %s LBS", weight, convertedWeight);
    } else if (conversion == "2") {
        // get weight
        write("Enter the amount of LBS to convert : ");
        weight = to!double(readln().chomp);

        // convert weight to kg
        convertedWeight = (nearbyint((weight * kgBase) * 10) / 10);

        // print converted weight
        writefln("\n%s LBS = %s KG", weight, convertedWeight);
    } else {
        exit(0);
    }
    
    // exit program
    write("\nPress enter to exit . . .");
    readln();
}
