def rotate_array(array)
  rotated_array = []
  rotated_array = array.slice(1, array.size - 1)
  rotated_array.push(array[0])
end

def rotate_rightmost_digits(number, num_of_digits)
  number_array = number.to_s.chars
  right_digits_array = number_array.slice!(-(num_of_digits), num_of_digits)
  rotated_digits_arr = rotate_array(right_digits_array)
  final_array = number_array.concat(rotated_digits_arr)
  final_array.join('').to_i
end

def max_rotation(number)
  number_size = number.to_s.length
  index = number_size
  changing_number = number
  loop do
    number = rotate_rightmost_digits(number, number_size)
    number_size -= 1
    break if number_size == 0
  end
  number
end

# puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]   # => true
# puts x == [1, 2, 3, 4]
#
# puts rotate_rightmost_digits(735291, 1) == 735291
# puts rotate_rightmost_digits(735291, 2) == 735219
# puts rotate_rightmost_digits(735291, 3) == 735912
# puts rotate_rightmost_digits(735291, 4) == 732915
# puts rotate_rightmost_digits(735291, 5) == 752913
# puts rotate_rightmost_digits(735291, 6) == 352917

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
