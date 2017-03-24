# def oddities(arr)
#   new_array = []
#   arr.each_index do |index|
#     if index % 2 == 0
#       new_array << arr[index]
#     end
#   end
#   new_array
# end

def oddities(arr)
  new_array = []
  index = 0
  loop do
    break unless index < arr.size 
    new_array << arr[index]
    index += 2
  end
  new_array
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
