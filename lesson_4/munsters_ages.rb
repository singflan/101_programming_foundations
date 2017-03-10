ages = {'Herman'=>32, 'Lily'=>30,'Grandpa' => 5843, "Eddie" => 10, "Marilyn"=>22, "Spot" => 237 }

# add up ages
ages_values = ages.values
total = 0
ages_values.each do |age|
  total += age
end

puts total

# find minimum age in hash
age_min = ages_values.min
name = ages.key(age_min)
puts "Name: #{name}, Age: #{ages[name]}"
