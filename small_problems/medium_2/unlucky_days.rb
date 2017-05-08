require 'date'

def friday_13th(year)
	thirteenth = Date.new(year, 1, 13)
	friday_13_count = 0

	12.times do 
		friday_13_count += 1 if thirteenth.friday?
		thirteenth = thirteenth.next_month
	end
	friday_13_count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2