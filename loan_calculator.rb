#ask for load years
# ensure it's an int
#set yr amount
#convert to months

#ask for loan amount
# ensure it's a float
# set loan amount

#ask for APR
# ensure it's a valid rate in % format
# set APR
# convert to monthly interest rate

# Use formula to calculate the Montly Payment
# output monthly payment

def valid_int?(input)
  input.to_i.to_s == input
end

def valid_float?(input)
  input.to_f.to_s == input
end

puts "Welcome to the Loan Calculator!"
puts "Please tell us how many years your loan is for (whole numbers): "
yr_duration = gets.chomp
# ensure they enter a valid # of years
loop do
  if valid_int?(yr_duration)
    break
  else
    puts "That is not a valid year. Please enter a whole number: "
    yr_duration = gets.chomp
  end
end

puts "Please enter a loan amount (omit the $ sign) "
loan_amount = gets.chomp
# ensure they enter a valid dollar amount
loop do
  if valid_float?(loan_amount)
    break
  else
    puts "That is not a valid amount, please enter a number: "
    loan_amount = gets.chomp
  end
end
