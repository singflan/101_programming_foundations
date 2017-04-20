def sequence(number)
  if number < 1
    puts "Number is below 1, cannot computer"
    return
  end
  array = []
  1.upto(number) do |index|
    array << index
  end
  array
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
