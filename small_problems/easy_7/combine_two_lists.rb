def interleave(arr1, arr2)
  result_arr = []
  i = 0
  loop do
    break if i >= arr1.size
    result_arr << arr1[i]
    result_arr << arr2[i]
    i += 1
  end
  result_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
