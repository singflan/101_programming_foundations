def double_odd_numbers(my_numbers)
  counter = 0
  doubled_odd_indexes = []

  loop do 
    break if counter == my_numbers.size

    current_number = my_numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_odd_indexes << current_number

    counter += 1
  end
  doubled_odd_indexes
end

numbers = [3, 3, 7, -7, 10, 11, 22, 119, 77]
p double_odd_numbers(numbers)
