#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Weight multipliers
        double kgBase = 0.453592;
        double lbsBase = 2.20462;

        // User input for conversion type
        NSLog(@"What type of conversion do you need?");
        NSLog(@"1. KG to LBS");
        NSLog(@"2. LBS to KG");
        
        char input[5];
        fgets(input, sizeof(input), stdin);
        NSString *conversion = [NSString stringWithUTF8String:input];

        NSLog(@"\n");

        // Check conversion type
        if ([conversion isEqualToString:@"1\n"]) {
            // Get weight in KG
            NSLog(@"Enter the amount of KG to convert: ");
            double weight;
            scanf("%lf", &weight);

            // Convert weight to LBS
            double convertedWeight = floor((weight * lbsBase) * 10) / 10;

            // Print converted weight
            NSLog(@"\n%.1f KG = %.1f LBS", weight, convertedWeight);
        } else if ([conversion isEqualToString:@"2\n"]) {
            // Get weight in LBS
            NSLog(@"Enter the amount of LBS to convert: ");
            double weight;
            scanf("%lf", &weight);

            // Convert weight to KG
            double convertedWeight = floor((weight * kgBase) * 10) / 10;

            // Print converted weight
            NSLog(@"\n%.1f LBS = %.1f KG", weight, convertedWeight);
        }

        // Inform the user to press enter to exit
        NSLog(@"\nPress enter to exit . . .");
        getchar(); // Consume the newline character
    }
    return 0;
}
