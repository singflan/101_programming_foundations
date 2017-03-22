def average(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end

  answer = sum.to_f / arr.size.to_f
  answer.to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25.0
puts average([9, 47, 23, 95, 16, 52]) == 40.0

puts average([5, 10, 19, 22, 3, 7]) == 11.0
