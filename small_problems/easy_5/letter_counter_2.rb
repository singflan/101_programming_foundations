def word_sizes(string)
  word_array = string.split(' ')
  size_hash = Hash.new(0)
  word_array.each do |word|
    count = word.count("a-zA-Z")
    size_hash[count] +=  1 
  end
  p size_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}