def multiply_list(arr1, arr2)
  index = 0
  product_array = []
  loop do
    product_array[index] = arr1[index] * arr2[index]
    index += 1
    break if index == arr1.size
  end
  product_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
