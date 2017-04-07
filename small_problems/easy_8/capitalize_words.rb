def word_cap(string)
  string_arr = string.split(' ')
  final_arr = string_arr.map do |word|
    word.capitalize
  end
  final_string = final_arr.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word')
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
