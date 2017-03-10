flintstones = ["Fred", 'Barney', 'Wilma','Betty','Pebbles','BamBam']

#create hash with names & indexes in the array
flint_hash = {}
flintstones.each_with_index do |name, index|
  flint_hash[name] = index
end

p flint_hash
