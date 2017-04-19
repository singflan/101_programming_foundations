def substrings_at_start(string)
  evolving_string_array = []
  evolving_string = ''
  string.chars.each do |char|
    evolving_string += char
    p evolving_string_array << evolving_string
  end
  evolving_string_array
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
