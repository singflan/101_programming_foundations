def print_star(total_number)
	num_of_max_mid_spaces = (total_number / 2) - 1
	outside_spaces = 0

	loop do  
		puts (" " * outside_spaces) + '*' + (" " * num_of_max_mid_spaces) + '*' + (" " * num_of_max_mid_spaces) + '*'			
		break if num_of_max_mid_spaces == 0
		num_of_max_mid_spaces -= 1
		outside_spaces += 1
	end
	puts ("*" * total_number)
	loop do 
		puts (" " * outside_spaces) + '*' + (" " * num_of_max_mid_spaces) + '*' + (" " * num_of_max_mid_spaces) + '*'	
		break if outside_spaces == 0
		num_of_max_mid_spaces += 1
		outside_spaces -= 1
	end
	puts " " 
end


def star(odd_num)
	distance_from_middle = odd_num / 2
	print_star(odd_num)
end

star(7)
star(9)
star(11)
star(17)