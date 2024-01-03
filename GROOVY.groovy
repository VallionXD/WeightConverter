// Weight multipliers
def kgBase = 0.453592
def lbsBase = 2.20462

// User input for conversion type
println "What type of conversion do you need?"
println "1. KG to LBS"
println "2. LBS to KG"
print "Select an option using numbers (1 or 2): "
def conversion = System.in.newReader().readLine().trim()

println "\n"

// Check conversion type
if (conversion == "1") {
    // Get weight in KG
    print "Enter the amount of KG to convert: "
    def weight = System.in.newReader().readLine().toDouble()

    // Convert weight to LBS
    def convertedWeight = Math.floor(weight * lbsBase * 10) / 10

    // Print converted weight
    println "\n${weight} KG = ${convertedWeight} LBS"
} else if (conversion == "2") {
    // Get weight in LBS
    print "Enter the amount of LBS to convert: "
    def weight = System.in.newReader().readLine().toDouble()

    // Convert weight to KG
    def convertedWeight = Math.floor(weight * kgBase * 10) / 10

    // Print converted weight
    println "\n${weight} LBS = ${convertedWeight} KG"
}
