def print_line(n, number_of_stars)
  print " " * (n - number_of_stars)
  puts "*" * number_of_stars
end

def triangle(n)
  num_of_stars = 1
  loop do
    print_line(n, num_of_stars)
    break if n == num_of_stars
    num_of_stars += 1
  end
end

triangle(5)
triangle(9)
triangle(20)
