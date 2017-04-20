def fizzbuzz(start_num, end_num)
	start_num.upto(end_num) do |num|
		if (num % 3 == 0) && (num % 5 == 0)
			print "FizzBuzz"
		elsif num % 3 == 0
			print "Fizz"
		elsif num % 5 == 0
			print "Buzz"
		else
			print num 
		end
		print ", " unless num == end_num
	end
end

fizzbuzz(1, 15)