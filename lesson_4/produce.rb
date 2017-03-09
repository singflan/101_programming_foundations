def select_fruit(food_list)
  counter = 0
  food_list_arr = food_list.keys
  fruit_list = {}

  loop do 
    break if counter == food_list.size
    current_item = food_list_arr[counter]
    current_item_type = food_list[current_item]
    if current_item_type == 'Fruit'
      fruit_list[current_item] = current_item_type
    end
    counter += 1
  end

  fruit_list
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

fruit = select_fruit(produce)
p fruit