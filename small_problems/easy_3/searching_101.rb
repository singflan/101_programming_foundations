def prompt(msg)
  puts "==> #{msg}"
end

num_array = []
prompt "Enter the 1st number: "
first_num = gets.chomp.to_i
prompt "Enter the 2nd number: "
second_num = gets.chomp.to_i
prompt "Enter the 3rd number: "
third_num = gets.chomp.to_i
prompt "Enter the 4th number: "
fourth_num = gets.chomp.to_i
prompt "Enter the 5th number: "
fifth_num = gets.chomp.to_i
prompt "Enter the last number: "
last_num = gets.chomp.to_i

num_array << first_num
num_array.push(second_num, third_num, fourth_num, fifth_num)
does_appear = false
num_array.each do |num|
  if num == last_num
    does_appear = true
  end
end

if does_appear
  prompt "The number #{last_num} appears in [#{first_num}, #{second_num}, #{third_num}, #{fourth_num}, #{fifth_num}]."
else
  prompt "The number #{last_num} does not appear in [#{first_num}, #{second_num}, #{third_num}, #{fourth_num}, #{fifth_num}]."
end

