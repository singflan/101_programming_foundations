def double_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_nums = [1, 10, 100, 5, 75, 3, 2, -2, -99]
double_numbers!(my_nums)
p my_nums