def repeat(string, number)
  number.times do 
    puts string
  end
end

puts "Please enter some words and press enter: "
input_string = gets.chomp
puts "How many times do you want to repeat? "
input_number = gets.chomp

repeat input_string, input_number