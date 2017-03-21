def repeat(string, number_of_times)
  i = 0
  loop do
    puts string
    i += 1
    break if i == number_of_times.to_i
  end
end

puts "Please enter some words and press enter: "
input_string = gets.chomp
puts "How many times do you want to repeat? "
input_number = gets.chomp

repeat input_string, input_number
