def minilang(user_string)
	action_array = user_string.split(' ')
	register = 0
	stack = []
	action_array.each do |item|
		if item.to_i.to_s == item 
			register = item.to_i
		end
		case item
		when 'PRINT' then puts register
		when 'PUSH' then stack.push(register)
		when 'ADD' then register += stack.pop
		when 'SUB' then register -= stack.pop
		when 'MULT' then register *= stack.pop
		when 'DIV' then register /= stack.pop
		when 'MOD' then register %= stack.pop
		when 'POP' then register = stack.pop
		end 
	end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')