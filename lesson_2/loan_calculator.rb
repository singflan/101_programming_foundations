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

def calc_monthly_payment(months, int_rate, amt)
  payment = amt.to_i * (int_rate / (1 - (1 + int_rate)**(-months)))
end

puts "Welcome to the Loan Calculator!"
puts "Please tell us how many years your loan is for (whole numbers): "
yr_duration = gets.chomp
# ensure they enter a valid # of years
loop do
  if valid_int?(yr_duration) && yr_duration.to_i > 0
    break
  else
    puts "That is not a valid year amount. Please enter a positive whole number: "
    yr_duration = gets.chomp
  end
end
#convert from yrs to months
month_duration = yr_duration.to_i * 12

puts "Please enter a loan amount (omit the $ sign) "
loan_amount = gets.chomp
# ensure they enter a valid dollar amount
loop do
  if (valid_float?(loan_amount) || valid_int?(loan_amount)) && loan_amount.to_i > 0
    break
  else
    puts "That is not a valid amount, please enter a positive number: "
    loan_amount = gets.chomp
  end
end

puts "Please enter the interest rate as a percentage (example: 4.5%, 5%, 2.99%): "
interest_rate = gets.chomp
loop do
  if (valid_float?(interest_rate) || valid_int?(interest_rate)) && interest_rate.to_i > 0
    break
  else
    puts "That is not a valid rate, please enter a number: "
    interest_rate = gets.chomp
  end
end
# convert to monthly interest rate
monthly_rate = interest_rate.to_f / 12.0 / 100.0

monthly_payment = calc_monthly_payment(month_duration, monthly_rate, loan_amount)
puts "Monthly payment is $#{format('%02.2f', monthly_payment)}"
