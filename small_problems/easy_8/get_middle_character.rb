def center_of(string)
	l = string.length
	p mid = l / 2
	if l.even? 
		p string[mid-1] + string[mid]
	else
		p string[mid]
	end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
