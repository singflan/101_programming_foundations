def letter_case_count(string)
  lwr_count = 0
  upper_count = 0
  neither_count = 0
  string.chars.each do |letter|
    if ('A'..'Z').include? letter
      upper_count += 1
    elsif ('a'..'z').include? letter
      lwr_count += 1
    else
      neither_count += 1
    end
  end
  hsh = { lowercase: lwr_count, uppercase: upper_count, neither: neither_count }
end

p letter_case_count('abCdef 123')
puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
