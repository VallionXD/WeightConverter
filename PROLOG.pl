% Weight multipliers
kg_base(0.453592).
lbs_base(2.20462).

% User input for conversion type
main :-
    write('What type of conversion do you need?'), nl,
    write('1. KG to LBS'), nl,
    write('2. LBS to KG'), nl,
    write('Select an option using numbers (1 or 2): '),
    read(Conversion),
    nl,

    % Check conversion type
    (   Conversion =:= 1
    ->  write('Enter the amount of KG to convert: '),
        read(Weight),
        lbs_base(LbsBase),
        ConvertedWeight is floor(Weight * LbsBase * 10) / 10,
        format('\n~w KG = ~w LBS\n', [Weight, ConvertedWeight])
    ;   Conversion =:= 2
    ->  write('Enter the amount of LBS to convert: '),
        read(Weight),
        kg_base(KgBase),
        ConvertedWeight is floor(Weight * KgBase * 10) / 10,
        format('\n~w LBS = ~w KG\n', [Weight, ConvertedWeight])
    ;   write('Invalid option\n')
    ).
