statement = "The Flintstones Rock"
letter_hash = {}
statement.chars.each do |letter|
  if letter_hash[letter] 
    letter_hash[letter] += 1
  else
    letter_hash[letter] = 1
  end
end

letter_hash
