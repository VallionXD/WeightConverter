-- weight multipliers
local kgBase = .453592
local lbsBase = 2.20462

-- conversion type
io.write("What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : ")
local conversion = io.read()

-- check conversion type
io.write("\n\n")
if conversion == "1" then
    -- get weight
    io.write("Enter the amount of KG to convert : ")
    local weight = (tonumber(io.read()) + .0)

    -- convert weight to lbs
    local convertedWeight = (math.floor((weight * lbsBase) * 10) / 10)

    -- print converted weight
    io.write("\n" .. weight .. " KG = " .. convertedWeight .. " LBS")
elseif conversion == "2" then
    -- get weight
    io.write("Enter the amount of LBS to convert : ")
    local weight = (tonumber(io.read()) + .0)

    -- convert weight to kg
    local convertedWeight = (math.floor((weight * kgBase) * 10) / 10)

    -- print converted weight
    io.write("\n" .. weight .. " LBS = " .. convertedWeight .. " KG")
else
    os.exit()
end

-- exit program
io.write("\n\nPress enter to exit . . .")
io.read()
