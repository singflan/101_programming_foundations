def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter an integer greater than 0: "
int = gets.chomp.to_i
prompt "Enter 's' to compute the sum, 'p' to compute the product."
response = gets.chomp.downcase

if response == 's'
  sum = 0
  for i in 1..int
    sum += i
  end
  prompt "The sum of the integers between 1 and #{int} is #{sum}."
elsif response == 'p'
  product = 1
  for i in 1..int
    product *= i
  end
  prompt "The product of the integers between 1 and #{int} is #{product}."
end
