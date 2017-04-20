def greetings(name_array, title_hash)
	full_name = name_array.join(' ')
	puts "Hello, #{full_name}! Nice to have a #{title_hash[:title]} #{title_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.