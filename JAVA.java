// libraries
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class Main {
    // input reader
    private static final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

    // weight multipliers
    private static final double kgBase = .453592;
    private static final double lbsBase = 2.20462;

    // conversion type
    private static String conversion = "";

    // weight values
    private static double weight = 0;
    private static double convertedWeight = 0;

    public static void main(String[] args) {
        // get the type of conversion that the user needs
        System.out.print("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ");
        try {
            conversion = bufferedReader.readLine();
        } catch (IOException IOE) {
            System.exit(0);
        }

        // check conversion type
        System.out.println();
        if (conversion.equals("1")) {
            // get weight
            System.out.print("Enter the amount of KG to convert : ");
            try {
                weight = Double.parseDouble(bufferedReader.readLine());
            } catch (IOException IOE) {
                System.exit(0);
            } catch (NumberFormatException NFE) {
                System.exit(0);
            }

            // convert weight to lbs
            convertedWeight = (double) Math.round((weight * lbsBase) * 10) / 10;

            // print converted weight
            System.out.println(weight + " KG = " + convertedWeight + " LBS\n");
        } else if (conversion.equals("2")) {
            // get weight
            System.out.print("Enter the amount of LBS to convert : ");
            try {
                weight = Double.parseDouble(bufferedReader.readLine());
            } catch (IOException IOE) {
                System.exit(0);
            } catch (NumberFormatException NFE) {
                System.exit(0);
            }

            // convert weight to kg
            convertedWeight = (double) Math.round((weight * kgBase) * 10) / 10;

            // print converted weight
            System.out.println(weight + " LBS = " + convertedWeight + " KG\n");
        } else {
            System.exit(0);
        }

        // exit program
        System.out.print("Press enter to exit . . .");
        try {
            bufferedReader.readLine();
        } catch (IOException IOE) {
            System.exit(0);
        }
    }
}
