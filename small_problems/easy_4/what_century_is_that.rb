def century(year)
  end_string = ''
  cent = (year - 1) / 100 == 0
  case cent.chars.last
  when 4, 5, 6, 7, 8, 9, 0
    then end_string = 'th'
  when 1
    then end_string = 'st' unless year / 1000 == 1


  cent = cent.to_s + end_string
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

