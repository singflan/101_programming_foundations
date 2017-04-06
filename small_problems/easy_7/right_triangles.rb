# def print_line(n, number_of_stars)
#   print " " * (n - number_of_stars)
#   puts "*" * number_of_stars
# end
#
# def triangle(n)
#   num_of_stars = 1
#   loop do
#     print_line(n, num_of_stars)
#     break if n == num_of_stars
#     num_of_stars += 1
#   end
# end

def triangle(num, corner_top = true, corner_right = true)
  if corner_top
    spaces = 0
    stars = num
  else
    spaces = num - 1
    stars = 1
  end

  num.times do |n|
    if corner_right
      puts (' ' * spaces) + ('*' * stars)
    else
      puts ('*' * stars) + (' ' * spaces)
    end
    if corner_top
      spaces += 1
      stars -= 1
    else
      spaces -= 1
      stars += 1
    end
  end
end

triangle(5)
triangle(9, false)
triangle(20, true, false)
triangle(4, false, false)
