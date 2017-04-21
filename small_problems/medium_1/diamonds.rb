def diamond(num)
	if num == 1
		puts "*"
	elsif num > 1
		num_of_spaces = (num - 1) / 2
		num_of_stars = 1
		loop do
			space_string = " " * num_of_spaces
			star_string = "*" * num_of_stars
			puts "#{space_string}#{star_string}#{space_string}"
			num_of_spaces -= 1
			num_of_stars +=2
			break if num_of_stars == num
		end
		loop do 
			space_string = " " * num_of_spaces
			star_string = "*" * num_of_stars
			puts "#{space_string}#{star_string}#{space_string}"
			break if num_of_stars == 1
			num_of_spaces += 1
			num_of_stars -=2
		end
	end
end

diamond(1)
diamond(3)
diamond(9)