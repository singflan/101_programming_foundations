def sum_of_sums(array)
  sum = 0
  index = array.size
  array.each do |num|
    sum = sum + (num * (index))
    index -= 1
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == 21
puts sum_of_sums([1, 5, 7, 3]) == 36
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
