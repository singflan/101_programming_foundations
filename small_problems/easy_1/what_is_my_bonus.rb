def calculate_bonus(salary, is_bonus)
  bonus = 0
  if is_bonus
    bonus = salary / 2
  end
  
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000