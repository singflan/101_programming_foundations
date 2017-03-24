def palindrome?(str_arr)
  str_arr == str_arr.reverse
end

def real_palindrome?(string)
  string = string.downcase.gsub(/[\s,']/, "")
  palindrome?(string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true
puts real_palindrome?("Madam, I'm Adam") == true
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
