CURRENT_YEAR = 2017

puts "What is your age? "
age = gets.chomp.to_i
puts "At what age woud you like to retire? "
retirement_age = gets.chomp.to_i


yrs_to_retirement = retirement_age - age
retirement_year = CURRENT_YEAR + yrs_to_retirement

puts "It's 2017. You will retire in #{retirement_year}."
puts "You have only #{yrs_to_retirement} years of work to go!"
