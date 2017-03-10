words = "the flintstones rock"

#individual_words = words.split('')
#individual_words.each do |word|
#  word.capitalize!
#end

#individual_words.to_s


characters = words.chars 
characters.each_with_index do |letter, index|
  if index == 0
    letter.capitalize!
  end
  if letter == ' '
    characters[index+1].capitalize!
  end
end

puts characters.join
