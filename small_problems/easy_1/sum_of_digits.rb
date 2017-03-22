def sum(int)
  sum = 0
  int_string = int.to_s.split(//)
  int_string.each do |digit|
    sum += digit.to_i
  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
