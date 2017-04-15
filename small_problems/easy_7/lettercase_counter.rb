def letter_case_count(string)
  num_of_lowercase = 0
  num_of_uppercase = 0
  num_of_neither = 0
  hash = { lowercase: num_of_lowercase, uppercase: num_of_uppercase, neither: num_of_neither }
  p num_of_lowercase = string.chars.select{|a| a == a..z }.count

  p hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
