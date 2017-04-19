def substrings_at_start(string)
  evolving_string_array = []
  evolving_string = ''
  string.chars.each do |char|
    evolving_string += char
    evolving_string_array << evolving_string
  end
  evolving_string_array
end

def substrings(string)
  results_array = []
  substring = ''
  0.upto(string.size - 1) do |index|
    substring = string[index..(string.size - 1)]
    results_array << substrings_at_start(substring)
  end
  p results_array.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
