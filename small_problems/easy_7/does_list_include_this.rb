def include?(array, value)
  found = false
    array.each do |element|
      if value.eql?(element)
        found = true
      end
    end
  return found
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
