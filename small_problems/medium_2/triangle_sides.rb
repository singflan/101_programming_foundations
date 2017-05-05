def triangle(side1, side2, side3)
	# all sides same, 2 same, all different, none zero or less
	return :invalid if side1 <= 0 || side2 <= 0 || side3 <= 0 
	if side1 > (side2 + side3) || side2 > (side1 + side3) || side3 > (side1 + side2)
		return :invalid
	end
	return :equilateral if side1 == side2 && side2 == side3
	return :isosceles if side1 == side2 || side2 == side3 || side3 == side1
	:scalene
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid