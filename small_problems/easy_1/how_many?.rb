def count_occurrences(array)
  counted_list = {}
  array.each do |item|
    if counted_list[item]
      counted_list[item] += 1
    else
      counted_list[item] = 1
    end
  end

  counted_list.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
