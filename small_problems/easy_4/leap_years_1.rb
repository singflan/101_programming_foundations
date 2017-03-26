def leap_year?(year)
  answer = nil
  if year >= 1752
    if year % 4 == 0
      answer = true
    else
      answer = false
    end

    if year % 100 == 0
     answer = false
    end
    
    if year % 400 == 0
      answer = true
    end
  else
    if year % 4 == 0 
      answer = true
    else
      answer = false
    end
  end
  answer
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
