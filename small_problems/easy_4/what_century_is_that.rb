def century(year)
  end_string = ''
  cent = ((year - 1) / 100) + 1 
  if year / 1000 == 1 || year / 1000 == 11
    end_string = 'th'
    return cent.to_s + end_string
  end

  case cent.to_s.chars.last
  when '1'
    end_string = 'st' unless year / 1000 == 1
  when '2'
    end_string = 'nd' unless year / 1000 == 1
  when '3'
    end_string = 'rd' unless year / 1000 == 1
  else
    end_string = 'th'
  end
    
  cent_string = cent.to_s + end_string
  cent_string
end
puts century(2000)
puts century(2000) == '20th'
puts century(2001)
puts century(2001) == '21st'
puts century(1965) 
puts century(1965) == '20th'
puts century(256)
puts century(256) == '3rd'
puts century(5)
puts century(5) == '1st'
puts century(10103)
puts century(10103) == '102nd'
puts century(1052)
puts century(1052) == '11th'
puts century(1127)
puts century(1127) == '12th'
puts century(11201)
puts century(11201) == '113th'

