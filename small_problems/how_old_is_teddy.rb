def get_teddys_age(name = 'Teddy')
  age = 20 + rand(180)
  puts "#{name} is #{age} years old!"
end

get_teddys_age
get_teddys_age('David')
