def letter_percentages(string)
	lowercase_count = string.count("a-z")
	uppercase_count = string.count("A-Z")
	non_letter_count = string.count("^(A-Za-z") 
	total_count = 0

	total_count = lowercase_count + uppercase_count + non_letter_count
	lowercase_percentage = (lowercase_count.to_f / total_count.to_f) * 100
	uppercase_percentage = (uppercase_count.to_f / total_count.to_f) * 100
	neither_percentage = (non_letter_count.to_f / total_count.to_f) * 100
	lowercase_percentage = lowercase_percentage.to_i if lowercase_percentage % 1 == 0
	uppercase_percentage = uppercase_percentage.to_i if uppercase_percentage % 1 == 0
	neither_percentage = neither_percentage.to_i if neither_percentage % 1 == 0


	return { lowercase: lowercase_percentage, uppercase: uppercase_percentage, neither: neither_percentage }
end

p letter_percentages('abCdef 123')
puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123')
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }