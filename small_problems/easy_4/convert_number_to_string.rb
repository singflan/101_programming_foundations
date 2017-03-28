DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  final_string = '' 

  loop do 
    int, remainder = int.divmod(10)
    final_string.prepend(DIGITS[remainder])
    break if int == 0
  end
  final_string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

def signed_integer_to_string(int)
  final_string = ''
  if int > 0
    final_string = '+' + integer_to_string(int)
  elsif int < 0
    final_string = '-' + integer_to_string(-int)
  else
    final_string = integer_to_string(int)
  end

  final_string    
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
