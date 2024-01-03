module WeightConverter;

    // Parameters
    parameter REAL kgBase = 0.453592;
    parameter REAL lbsBase = 2.20462;

    // Inputs
    reg [1:0] conversion;
    reg [31:0] weight;

    // Outputs
    wire [31:0] convertedWeight;

    // User input for conversion type
    initial begin
        $display("What type of conversion do you need?");
        $display("1. KG to LBS");
        $display("2. LBS to KG");
        $display("Select an option using numbers (1 or 2): ");
        $scanf("%d", conversion);
        
        case(conversion)
            2: begin
                $display("Enter the amount of LBS to convert: ");
                $scanf("%f", weight);
                convertedWeight = $floor(weight * kgBase * 10.0) / 10.0;
                $display("%f LBS = %f KG", weight, convertedWeight);
            end
            1: begin
                $display("Enter the amount of KG to convert: ");
                $scanf("%f", weight);
                convertedWeight = $floor(weight * lbsBase * 10.0) / 10.0;
                $display("%f KG = %f LBS", weight, convertedWeight);
            end
            default: $display("Invalid option");
        endcase
    end

endmodule
