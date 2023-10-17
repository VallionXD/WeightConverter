// libraries
#include <iostream>
#include <conio.h>
#include <cmath>

// weight multipliers
const float kgBase = .453592;
const float lbsBase = 2.20462;

// conversion type
char conversion;

// weight values
float weight;
float convertedWeight;

int main()
{
    // get the type of conversion that the user needs
    std::cout << "What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ";
    std::cin >> conversion;

    // check conversion type
    std::cout << "\n";
    if (conversion == '1') {
        // get weight
        std::cout << "Enter the amount of KG to convert : ";
        std::cin >> weight;

        // convert weight to lbs
        convertedWeight = (round((weight * lbsBase) * 10) / 10);

        // print converted weight
        std::cout << weight << " KG = " << convertedWeight << " LBS";
    } else if (conversion == '2') {
        // get weight
        std::cout << "Enter the amount of LBS to convert : ";
        std::cin >> weight;

        // convert weight to kg
        convertedWeight = (round((weight * kgBase) * 10) / 10);

        // print converted weight
        std::cout << weight << " LBS = " << convertedWeight << " KG";
    } else {
        return 0;
    }

    // exit program
    std::cout << "\n\nPress any key to exit . . .";
    getch();
}
