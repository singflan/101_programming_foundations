# The program thinks it's concatinating a string, not an int
# YOu can fix it by doing: 
# 1)
puts "the value of 40 + 2 is #{40 + 2}"

# 2)
puts "the value of 40 + 2 is " + (40 + 2).to_s
