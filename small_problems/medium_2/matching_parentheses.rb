# def balanced?(string)
# 	left_paren_count = 0
# 	right_paren_count = 0

# 	string.chars.each do |char|
# 		if char == '('
# 			left_paren_count += 1
# 		elsif char == ')'
# 			right_paren_count +=1
# 		end
# 		return false if right_paren_count > left_paren_count
# 	end
# 	return false if right_paren_count != left_paren_count
# 	true
# end

def balanced?(string)
  parens = 0
  curly = 0
  brackets = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    curly += 1 if char == '{'
    curly -= 1 if char == '}'
    brackets += 1 if char == '['
    brackets -= 1 if char == ']'
    break if parens < 0 || curly
  end

  parens.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false