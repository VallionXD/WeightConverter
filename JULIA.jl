# weight multipliers
kgBase = .453592
lbsBase = 2.20462

# conversion type
print("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ")
conversion = readline()

# check conversion type
println()
if conversion == "1"
    # get weight
    print("Enter the amount of KG to convert : ")
    weight = parse(Float64, readline())

    # convert weight to lbs
    convertedWeight = (round((weight * lbsBase) * 10) / 10)

    # print converted weight
    println("$weight KG = $convertedWeight LBS")
elseif conversion == "2"
    # get weight
    print("Enter the amount of LBS to convert : ")
    weight = parse(Float64, readline())

    # convert weight to kg
    convertedWeight = (round((weight * kgBase) * 10) / 10)

    # print converted weight
    println("$weight LBS = $convertedWeight KG")
else
    exit()
end

# exit program
print("\nPress enter to exit . . .")
readline()
