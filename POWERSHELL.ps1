# Weight multipliers
$kgBase = 0.453592
$lbsBase = 2.20462

# User input for conversion type
Write-Host "What type of conversion do you need?"
Write-Host "1. KG to LBS"
Write-Host "2. LBS to KG"
$conversion = Read-Host "Select an option using numbers (1 or 2)"

Write-Host "`n"

# Check conversion type
if ($conversion -eq "1") {
    # Get weight in KG
    $weight = Read-Host "Enter the amount of KG to convert"

    # Convert weight to LBS
    $convertedWeight = [math]::Floor($weight * $lbsBase * 10) / 10

    # Print converted weight
    Write-Host "`n$weight KG = $convertedWeight LBS`n"
} elseif ($conversion -eq "2") {
    # Get weight in LBS
    $weight = Read-Host "Enter the amount of LBS to convert"

    # Convert weight to KG
    $convertedWeight = [math]::Floor($weight * $kgBase * 10) / 10

    # Print converted weight
    Write-Host "`n$weight LBS = $convertedWeight KG`n"
}

# Inform the user to press enter to exit
Write-Host "`nPress enter to exit . . ."
$null = Read-Host
