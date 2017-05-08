def sum_square_difference(num)
	# calculate square of sum
	sum_orignal_numbers = 0
	1.upto(num) do |number|
		sum_orignal_numbers += number
	end
	square_of_sum = sum_orignal_numbers ** 2
	# calculate sum of squares
	sum_of_squares = 0
	1.upto(num) do |number|
		sum_of_squares += number ** 2
	end
	sum_of_squares
	# calculate difference
	square_of_sum - sum_of_squares
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150