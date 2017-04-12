def staggered_case(string)
  modified_string = ''
  upcase = true
  string.chars.each do |char|
    if char =~ /[a-zA-Z]/
      if upcase
        modified_string += char.upcase
      else
        modified_string += char.downcase
      end
      upcase = !upcase
    else
      modified_string += char
    end
  end
  modified_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
