def double_consonants(string)
	result_string = ''
	string.chars.each do |char|
		if char =~ /[bcdfghjklmnpqrstvwxyz]/i
			result_string << char * 2
		else
			result_string << char
		end
	end
	p result_string
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""