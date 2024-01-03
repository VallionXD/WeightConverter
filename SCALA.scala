object WeightConverter {
  def main(args: Array[String]): Unit = {
    // Weight multipliers
    val kgBase = 0.453592
    val lbsBase = 2.20462

    // User input for conversion type
    println("What type of conversion do you need?")
    println("1. KG to LBS")
    println("2. LBS to KG")
    print("Select an option using numbers (1 or 2): ")
    val conversion = scala.io.StdIn.readLine().trim

    println("\n")

    // Check conversion type
    if (conversion == "1") {
      // Get weight in KG
      print("Enter the amount of KG to convert: ")
      val weight = scala.io.StdIn.readDouble()

      // Convert weight to LBS
      val convertedWeight = math.floor(weight * lbsBase * 10) / 10

      // Print converted weight
      println(s"\n${weight} KG = ${convertedWeight} LBS")
    } else if (conversion == "2") {
      // Get weight in LBS
      print("Enter the amount of LBS to convert: ")
      val weight = scala.io.StdIn.readDouble()

      // Convert weight to KG
      val convertedWeight = math.floor(weight * kgBase * 10) / 10

      // Print converted weight
      println(s"\n${weight} LBS = ${convertedWeight} KG")
    }
  }
}
