-module(weight_converter).
-export([start/0]).

start() ->
    kg_base = 0.453592,
    lbs_base = 2.20462,
    io:fwrite("What type of conversion do you need?\n"),
    io:fwrite("1. KG to LBS\n"),
    io:fwrite("2. LBS to KG\n"),
    io:fwrite("Select an option using numbers (1 or 2): "),
    {ok, [Conversion]} = io:fread("","~d"),
    io:fwrite("\n"),
    case Conversion of
        1 ->
            io:fwrite("Enter the amount of KG to convert: "),
            {ok, [Weight]} = io:fread("","~f"),
            ConvertedWeight = trunc(Weight * lbs_base * 10) / 10,
            io:fwrite("~f KG = ~f LBS\n", [Weight, ConvertedWeight]);
        2 ->
            io:fwrite("Enter the amount of LBS to convert: "),
            {ok, [Weight]} = io:fread("","~f"),
            ConvertedWeight = trunc(Weight * kg_base * 10) / 10,
            io:fwrite("~f LBS = ~f KG\n", [Weight, ConvertedWeight]);
        _ ->
            io:fwrite("Invalid option\n")
    end.
