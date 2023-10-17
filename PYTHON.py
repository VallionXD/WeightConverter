# libraries
import msvcrt

# weight multipliers
kgBase = .453592
lbsBase = 2.20462

# conversion type
conversion = input("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ")

# check conversion type
print()
if conversion == "1":
    # get weight
    weight = float(input("Enter the amount of KG to convert : "))

    # convert weight to lbs
    convertedWeight = (round((weight * lbsBase) * 10) / 10)

    # print converted weight
    print(f"{weight} KG = {convertedWeight} LBS")
elif conversion == "2":
    # get weight
    weight = float(input("Enter the amount of LBS to convert : "))

    # convert weight to lbs
    convertedWeight = (round((weight * kgBase) * 10) / 10)

    # print converted weight
    print(f"{weight} LBS = {convertedWeight} KG")
else:
    exit()

# exit program
print("\nPress any key to exit . . .")
msvcrt.getch()
