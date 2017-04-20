def repeater(string)
	doubled_string = ''
	string.chars.each do |char|
		doubled_string << char * 2
	end
	p doubled_string
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''