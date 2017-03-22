# for i in 1..100
#   puts i if i.odd?
# end

a=*(1..100)
b = []
b = a.select { |num| (num % 2) != 0 }
b.each { |num| puts num }
