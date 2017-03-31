def print_line(symbol1, symbol2, num_of_times)
  print "#{symbol1}"
  num_of_times.times { print "#{symbol2}" }
  puts "#{symbol1}"
end

def divide_string(string)
  if string.size > 76
    string = string / 2
end

def print_in_box(string)
  string_width = string.size
  print_line('+', '-', string_width + 2)
  print_line('|', ' ', string_width + 2)
  divide_string    
    puts "| #{string} |"
  end
  print_line('|', ' ', string_width + 2)
  print_line('+', '-', string_width + 2)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
