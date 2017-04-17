def swapcase(string)
  new_string = string.chars.map do |char|
    if ('A'..'Z').include? char
      char.downcase
    elsif ('a'..'z').include? char
      char.upcase
    else
      char
    end
  end
  new_string.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
