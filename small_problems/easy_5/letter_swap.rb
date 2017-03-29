def swap(string)
  str_array = string.split(' ')
  swapped_arr = str_array.map do |word|
    swapped_word = word.chars
    first = swapped_word.shift
    last = swapped_word.pop
    swapped_word = swapped_word.push(first)
    swapped_word = swapped_word.unshift(last) unless last == nil
    swapped_word.join
  end

  swapped_arr.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'