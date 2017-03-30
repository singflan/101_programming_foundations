def remove_vowels(array)
  array.map do |word|
    word.delete('AEIOUaeiou')
  end
  # altered_arr = []
  # altered_arr = array.map do |word|
  #   word.chars.select do |letter|
  #     letter if letter.include?('AEIOUaeiou')
  #   end
  #   p word
  # end
  # p altered_arr
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
