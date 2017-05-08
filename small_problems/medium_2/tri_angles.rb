def triangle(angle1, angle2, angle3)
	return :invalid if angle3 <= 0 || angle2 <= 0 || angle1 <= 0
	return :invalid if angle1 + angle2 + angle3 != 180
	triangle_arr = [angle1, angle2, angle3]
	return :obtuse if triangle_arr.max > 90
	return :right if triangle_arr.max == 90
	:acute
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid