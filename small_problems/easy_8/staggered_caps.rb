def staggered_case(string, first_upper=true)
  characters = string.downcase.chars
  if first_upper
    index = -1
  else
    index = 0
  end
  adjusted_chars = characters.map do |char|
    index += 1
    if index.even?
      char.capitalize
    else
      char
    end
  end
  p adjusted_chars.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
