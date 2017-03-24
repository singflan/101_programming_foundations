def palindrome?(str_arr)
  str_arr == str_arr.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true
puts palindrome?([1,2,3,3,2,1]) == true
