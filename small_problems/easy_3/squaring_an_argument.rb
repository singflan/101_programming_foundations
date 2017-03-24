def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def to_power(num, power)
  num ** power
end

puts square(5) == 25
puts square(-8) == 64
puts to_power(5, 3)
puts to_power(2, 4)
