with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Weight_Converter is
    Kg_Base : constant := 0.453592;
    Lbs_Base : constant := 2.20462;
    Conversion : Integer;
    Weight : Float;
    Converted_Weight : Float;

begin
    Put_Line("What type of conversion do you need?");
    Put_Line("1. KG to LBS");
    Put_Line("2. LBS to KG");
    Put("Select an option using numbers (1 or 2): ");
    Get(Conversion);

    Put_Line("");

    case Conversion is
        when 1 =>
            Put("Enter the amount of KG to convert: ");
            Get(Weight);
            Converted_Weight := Float'Floor(Weight * Lbs_Base * 10.0) / 10.0;
            Put_Line("");
            Put_Line(Float'Image(Weight) & " KG = " & Float'Image(Converted_Weight) & " LBS");
        when 2 =>
            Put("Enter the amount of LBS to convert: ");
            Get(Weight);
            Converted_Weight := Float'Floor(Weight * Kg_Base * 10.0) / 10.0;
            Put_Line("");
            Put_Line(Float'Image(Weight) & " LBS = " & Float'Image(Converted_Weight) & " KG");
        when others =>
            Put_Line("Invalid option");
    end case;

end Weight_Converter;
