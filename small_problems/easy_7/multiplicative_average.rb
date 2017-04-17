def show_multiplicative_averge(array)a
  product = array.inject(:*)
  p average = product.to_f / array.size

  puts "The result is #{'%.03f' % average}"
end

puts show_multiplicative_averge([3, 5])
puts show_multiplicative_averge([2, 5, 7, 11, 13, 17])
