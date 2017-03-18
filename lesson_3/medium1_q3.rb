def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do 
    divisors << number / dividend if number % dividend == 0      
    dividend -= 1
  end
  divisors
end




# Bonus 1 
# number % dividend == 0 lets you find which numbers divide evenly into the given number as the remainder is 0

# Bonus 2
# the last line that says divisors is returning the array that contains all of the divisors of the given number