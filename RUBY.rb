# weight multipliers
kgBase = 0.453592
lbsBase = 2.20462

# conversion type
print "What type of conversion do you need?\n - KG to LBS\n - LBS to KG\nSelect an option using numbers (1 or 2) : "
conversion = gets.chomp

# check conversion type
puts ""
if conversion == "1"
    # get weight
    print "Enter the amount of KG to convert : "
    weight = gets.chomp.to_f()
    
    # convert weight to lbs
    convertedWeight = (((weight * lbsBase) * 10).round().to_f() / 10)
    
    # print converted weight
    print "#{weight} KG = #{convertedWeight} LBS"
elsif conversion == "2"
    # get weight
    print "Enter the amount of LBS to convert : "
    weight = gets.chomp.to_f()
    
    # convert weight to kg
    convertedWeight = (((weight * kgBase) * 10).round().to_f() / 10)
    
    # print converted weight
    print "#{weight} LBS = #{convertedWeight} KG"
else
    exit
end

# exit program
print "\n\nPress any key to exit . . ."

begin
  system("stty raw -echo")
  STDIN.getc
ensure
  system("stty -raw echo")
end
