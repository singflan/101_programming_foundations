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
  results_array.flatten
end

def palindromes(string)
  #starting_index = 0
  # 0.upto(string.length) do |index|
  #   p string[index..(-(index+1))] if index <= string.size / 2
  # end
  all_substrings = substrings(string)
  palindromes = []
  all_substrings.each do |item|
    palindromes << item if item == item.reverse && item.length > 1
  end
  p palindromes
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
