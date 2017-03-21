def is_odd?(int)
  int % 2 != 0
end

puts is_odd?(5)
puts is_odd?(101)
puts is_odd?(200)
puts is_odd?(-78)
puts is_odd?(-5)

def is_odd2?(int)
  int.remainder(2) == 1
end

puts is_odd2?(7)
puts is_odd2?(-58)
