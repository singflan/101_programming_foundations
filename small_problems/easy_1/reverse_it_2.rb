def reverse_words(string)
  array = string.split
  reversed_array = []
  reversed_array = array.map do |word|
    if word.length >= 5
      word.reverse 
    else
      word 
    end
  end
  reversed_array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

