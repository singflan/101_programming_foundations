def word_sizes(string)
  word_array = string.split(' ')
  size_hash = {}
  word_array.each do |word|
    size = word.length
    if size_hash[size]
      size_hash[size] +=  1 
    else
      size_hash[size] ||= 1
    end
  end
  size_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}