% Weight multipliers
kgBase = 0.453592;
lbsBase = 2.20462;

% User input for conversion type
conversion = input('What type of conversion do you need?\n1. KG to LBS\n2. LBS to KG\nSelect an option using numbers (1 or 2): ');

fprintf('\n');

% Check conversion type
if conversion == 1
    % Get weight in KG
    weight = input('Enter the amount of KG to convert: ');

    % Convert weight to LBS
    convertedWeight = floor(weight * lbsBase * 10) / 10;

    % Print converted weight
    fprintf('\n%.1f KG = %.1f LBS\n', weight, convertedWeight);
elseif conversion == 2
    % Get weight in LBS
    weight = input('Enter the amount of LBS to convert: ');

    % Convert weight to KG
    convertedWeight = floor(weight * kgBase * 10) / 10;

    % Print converted weight
    fprintf('\n%.1f LBS = %.1f KG\n', weight, convertedWeight);
end
