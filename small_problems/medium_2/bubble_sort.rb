def bubble_sort!(arr)
	loop do
		swap_happened = 'no'
		index = 0
		loop do
			if arr[index] > arr[index+1]
				front = arr[index+1]
				arr[index+1] = arr[index]
				arr[index] = front
				swap_happened = 'yes'
			end
			index += 1
			break if index == arr.size - 1
		end
		arr
		break if swap_happened == 'no'
	end
	arr
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)