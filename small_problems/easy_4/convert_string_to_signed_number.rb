DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_signed_number(string)
  str_array = string.chars
  sign = str_array.shift
  # add number back to array if not a sign
  if sign != '+' && sign != '-'
    str_array.unshift(sign)
  end

  digits = str_array.map  { |char| DIGITS[char] }

  integer = 0
  if sign == '-'
    digits.each do |digit|
      integer = (digit + integer * 10)
      -integer
    end
  else 
    digits.each do |digit|
      integer = digit + integer * 10
    end
  end

  integer
end

puts string_to_signed_number('4321') == 4321
puts string_to_signed_number('-570') == 570
puts string_to_signed_number('+100') == 100