def short_long_short(string1, string2)
  if string1.length < string2.length
    short_string = string1
    long_string = string2
  else
    short_string = string2
    long_string = string1
  end
  final_string = short_string + long_string + short_string
  puts final_string
  final_string
end

puts short_long_short('abc', 'defgh') == 'abcdefghabc'
puts short_long_short('abcde', 'fgh') == 'fghabcdefgh'
puts short_long_short('', 'xyz') == 'xyz'