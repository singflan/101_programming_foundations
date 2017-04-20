def twice(number)
	num_string = number.to_s

	if num_string.size.even?
		mid = num_string.size / 2
		num_string_2 = num_string.slice!(mid, mid)
		if num_string == num_string_2
			number
		else
			number * 2
		end
	else
		number * 2
	end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10