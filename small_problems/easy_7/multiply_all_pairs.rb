def multiply_all_pairs(array1, array2)
  product_array = []
  array1.each do |index|
    array2.each do |index2|
      product_array << index * index2
    end
  end
  product_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
