def halvsies(array)

  half = array.size / 2
  if array.size.even?
    arr1 = array[0..half-1]
    arr2 = array[half..-1]
  else
    arr1 = array[0..half]
    arr2 = array[half+1..-1]
  end
  return arr1, arr2
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
