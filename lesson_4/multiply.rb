def multiply(numbers, multiplier)
  counter = 0
  result_array = []

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    result_array << current_number * multiplier

    counter += 1
  end
  result_array
end

my_numbers = [1,4,3,7,2,6]
p multiply(my_numbers, 10)