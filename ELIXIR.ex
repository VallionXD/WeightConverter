defmodule WeightConverter do
  @kg_base 0.453592
  @lbs_base 2.20462

  def main do
    IO.puts("What type of conversion do you need?")
    IO.puts("1. KG to LBS")
    IO.puts("2. LBS to KG")
    IO.write("Select an option using numbers (1 or 2): ")
    conversion = IO.gets("")

    IO.puts("")

    case conversion do
      "1\n" ->
        IO.write("Enter the amount of KG to convert: ")
        weight = String.to_float(IO.gets(""))
        converted_weight = Float.floor(weight * @lbs_base * 10.0) / 10.0
        IO.puts("\n#{weight} KG = #{converted_weight} LBS")

      "2\n" ->
        IO.write("Enter the amount of LBS to convert: ")
        weight = String.to_float(IO.gets(""))
        converted_weight = Float.floor(weight * @kg_base * 10.0) / 10.0
        IO.puts("\n#{weight} LBS = #{converted_weight} KG")

      _ ->
        IO.puts("Invalid option")
    end
  end
end

WeightConverter.main()
