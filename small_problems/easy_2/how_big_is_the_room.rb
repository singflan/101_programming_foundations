SQ_FT_PER_SQ_METER = 10.7639
SQ_INCH_PER_SQ_FT = 144
SQ_CENTIMETER_PER_SQ_FT = 929.03

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f
puts "Enter the width of the room in meters: "
width = gets.chomp.to_f
area = (width * length).round(2)
area_in_feet = (area * SQ_FT_PER_SQ_METER).round(2)

puts "The area of the room is #{area} square meters (#{area_in_feet} square feet)."

puts "Enter the length of the room in feet: "
length_feet = gets.chomp.to_f
puts "Enter the width of the room in feet: "
width_feet = gets.chomp.to_f
area_feet = (width_feet * length_feet).round(2)
area_inches = (area_feet * SQ_INCH_PER_SQ_FT).round(2)
area_centimeteres = (area_feet * SQ_CENTIMETER_PER_SQ_FT).round(2)

puts "The area of the room is #{area_feet} square feet (#{area_inches} square inches & #{area_centimeteres} square centimeters.)"
