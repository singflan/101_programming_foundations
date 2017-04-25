
file = File.read("sample_text.txt") #.split(/[?.!]/)
sentences = file.split(/[?.!]/)
sentence_count_array = []
sentences.each do |sentence|
	sentence_count_array << sentence.split(' ').count
end

p sentence_count_array.max