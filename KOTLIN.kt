import kotlin.math.round

fun main() {
    // Weight multipliers
    val kgBase = 0.453592
    val lbsBase = 2.20462

    // User input for conversion type
    println("What type of conversion do you need?")
    println("1. KG to LBS")
    println("2. LBS to KG")

    // Check conversion type
    when (val conversion = readLine()) {
        "1" -> {
            // Get weight in KG
            print("Enter the amount of KG to convert: ")
            val weight = readLine()?.toDoubleOrNull()

            // Convert KG to LBS
            weight?.let {
                val convertedWeight = round((it * lbsBase) * 10) / 10
                println("\n$it KG = $convertedWeight LBS")
            }
        }
        "2" -> {
            // Get weight in LBS
            print("Enter the amount of LBS to convert: ")
            val weight = readLine()?.toDoubleOrNull()

            // Convert LBS to KG
            weight?.let {
                val convertedWeight = round((it * kgBase) * 10) / 10
                println("\n$it LBS = $convertedWeight KG")
            }
        }
        else -> return
    }
}
