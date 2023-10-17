// libraries
#include <stdio.h>
#include <conio.h>
#include <math.h>

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
	printf("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ");
    scanf(" %c", &conversion);
  	
  	// check conversion type
  	printf("\n");
  	if (conversion == '1') {
  		// get weight
        printf("Enter the amount of KG to convert : ");
        scanf("%f", &weight);

        // convert weight to lbs
        convertedWeight = (round((weight * lbsBase) * 10) / 10);

        // print converted weight
        printf("%g KG = %g LBS", weight, convertedWeight);
	} else if (conversion == '2') {
		// get weight
        printf("Enter the amount of LBS to convert : ");
        scanf("%f", &weight);

        // convert weight to kg
        convertedWeight = (round((weight * kgBase) * 10) / 10);

        // print converted weight
        printf("%g LBS = %g KG", weight, convertedWeight);
	} else {
        return 0;
    }
	
	// exit program
	printf("\nPress any key to exit . . .");
	getch();
}
