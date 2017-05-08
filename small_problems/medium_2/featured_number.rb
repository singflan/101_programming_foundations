def featured(number)
	loop do 
		number += 1
		if number.odd? && number % 7 == 0 
			digit_arr = number.to_s.chars.to_a
			duplicate_arr = digit_arr.select{|element| digit_arr.count(element) > 1} 
			if duplicate_arr.size == 0 
				break
			end
		end
		return 'There is no possible number that fulfills those requirements.' if number > 9_876_543_210
	end

	number
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'