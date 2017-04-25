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

def fibonacci_last(number)
	answer = fibonacci(number)
	last_digit = answer.to_s.chars.last.to_i
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4