-- Weight multipliers
kgBase :: Double
kgBase = 0.453592

lbsBase :: Double
lbsBase = 2.20462

-- User input for conversion type
main :: IO ()
main = do
    putStrLn "What type of conversion do you need?"
    putStrLn "1. KG to LBS"
    putStrLn "2. LBS to KG"
    putStr "Select an option using numbers (1 or 2): "
    conversion <- getLine
    putStrLn ""

    -- Check conversion type
    if conversion == "1"
        then do
            -- Get weight in KG
            putStr "Enter the amount of KG to convert: "
            weightStr <- getLine
            let weight = read weightStr :: Double

            -- Convert weight to LBS
            let convertedWeight = fromIntegral (floor (weight * lbsBase * 10) :: Int) / 10.0

            -- Print converted weight
            putStrLn $ "\n" ++ show weight ++ " KG = " ++ show convertedWeight ++ " LBS"
        else if conversion == "2"
            then do
                -- Get weight in LBS
                putStr "Enter the amount of LBS to convert: "
                weightStr <- getLine
                let weight = read weightStr :: Double

                -- Convert weight to KG
                let convertedWeight = fromIntegral (floor (weight * kgBase * 10) :: Int) / 10.0

                -- Print converted weight
                putStrLn $ "\n" ++ show weight ++ " LBS = " ++ show convertedWeight ++ " KG"
            else
                putStrLn "Invalid option"
