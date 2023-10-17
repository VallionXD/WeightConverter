class CSHARP
{
    // weight multipliers
    private const double kgBase = .453592;
    private const double lbsBase = 2.20462;

    // conversion type
    private static string? conversion = "";

    // weight values
    private static double weight = 0;
    private static double convertedWeight = 0;

    public static void Main()
    {
        // get the type of conversion that the user needs
        Console.Write("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ");
        conversion = Console.ReadLine();

        // check conversion type
        Console.WriteLine("");
        if (conversion == "1")
        {
            // get weight
            Console.Write("Enter the amount of KG to convert : ");
            weight = Convert.ToDouble(Console.ReadLine());

            // convert weight to lbs
            convertedWeight = (Math.Round((weight * lbsBase) * 10) / 10);

            // print converted weight
            Console.Write(weight.ToString("F1") + " KG = " + convertedWeight.ToString("F1") + " LBS");
        }
        else if (conversion == "2")
        {
            // get weight
            Console.Write("Enter the amount of LBS to convert : ");
            weight = Convert.ToDouble(Console.ReadLine());

            // convert weight to kg
            convertedWeight = (Math.Round((weight * kgBase) * 10) / 10);

            // print converted weight
            Console.Write("\n" + weight.ToString("F1") + " LBS = " + convertedWeight.ToString("F1") + " KG");
        }
        else
        {
            Environment.Exit(0);
        }

        // exit program
        Console.Write("\n\nPress any key to exit . . .");
        Console.ReadKey();
    }
}
