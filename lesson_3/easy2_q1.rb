ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

puts ages.key?('spot')
puts ages.include?('spot')

additional_ages = {"Marilyn" => 22, "Spot" => 237}
puts ages.merge!(additional_ages)