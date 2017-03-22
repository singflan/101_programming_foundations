def stringy(int, start_with = 1)
  code = ''
  if start_with == 1
    second_digit = '0'
  elsif start_with == 0
    second_digit = '1'
  end

  for i in 1..int
    if i % 2 == 1
      code << start_with.to_s
    elsif i % 2 == 0
      code << second_digit
    end
  end

  code     
end

puts stringy(6) == '101010'
puts stringy(9, 1) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(5, 0) == '01010'
puts stringy(2, 0) == '01'

