def string_to_integer(string)
  str_array = string.chars
  int_array = str_array.map do |char|
    case char
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9
    when '0' then 0
    else
      puts "not a number"
    end
  end
  number = 0
  int_array.each do |digit| 
    number = digit + 10 * number 
  end
  number
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570