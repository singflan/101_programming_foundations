def merge(arr1, arr2)
	combined_arr = arr1 + arr2
	results_array = []
	p smallest_num = combined_arr[0]
	index = 0
	while index < combined_arr.size
		if combined_arr[index] < smallest_num
			p smallest_num = num
		end

	end
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]