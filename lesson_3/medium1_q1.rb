phrase = "The Flintstones Rock!"

index = 0
indent = ''
loop do 
  puts indent + phrase
  index += 1
  indent += ' '
  break if index == 10
end



#Loop the phrase, on each iteration add one space before
