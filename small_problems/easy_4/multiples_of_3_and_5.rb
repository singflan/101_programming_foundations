def multisum(num)
  multiples = []
  for i in 1..num do 
    if (i % 3 == 0) || (i % 5 == 0)
      multiples << i
    end
  end
  multiples.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168