puts "Please write word or multiple words: "
string = gets.chomp
total_chars = string.count(string, "^ ")
puts "There are #{total_chars} characters \"#{string}\"."