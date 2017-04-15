def penultimate(string)
  word_array = string.split(' ')
  p penultimate_word = word_array[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
