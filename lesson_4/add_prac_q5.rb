flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# find index of frist name that starts with 'Be'
flintstones.each_with_index do |name, index|
  if name.start_with?('Be')
    puts index
    index
    break
  end
end

# shorten all names in array to first three letters
flintstones.map! do |name|
  name[0,3]
end

p flintstones
