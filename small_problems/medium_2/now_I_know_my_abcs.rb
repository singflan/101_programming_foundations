BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
				 ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
				 ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
#BLOCK_HASH = {'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A'
#					'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
#					'V' => 'I', 'L' => 'Y', 'Z' => 'M'}


def block_word?(word)
	letters = word.chars
	letter_found = false
	block_word = ''
	remaining_blocks = BLOCKS.clone
	letters.each do |letter|
		remaining_blocks.each do |block|
			block.each do |side|
				if letter.downcase == side.downcase
					remaining_blocks.delete(block)
					puts "match found"
					letter_found = true
					p block_word << side
					break
				end
			end
			break if letter_found
		end
		letter_found = false
	end
	word.downcase == block_word.downcase
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true