def fibonacci(number)
	first = 1
	second = 1
	index = 2
	fib = 0

	loop do 
		index += 1
		fib = first + second
		break if index == number

		first = second
		second = fib
	end

	p fib
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501
