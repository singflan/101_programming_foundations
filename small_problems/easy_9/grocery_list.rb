def buy_fruit(fruit_array)
  new_array = []
  fruit_array.each do |element|
    element[1].times do
      new_array << element[0]
    end
  end
  p new_array
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
