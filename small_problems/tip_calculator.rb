puts "What is the bill? "
bill_amt = gets.chomp.to_f
puts "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip_amt = (bill_amt * (tip_percentage / 100)).round(2)
total = (bill_amt + tip_amt).round(2)
puts "The tip is $#{'%.02f' % tip_amt}"
puts "The total is $#{'%.02f' % total}"
