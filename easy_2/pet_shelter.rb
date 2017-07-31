class Pet
  attr_reader :name, :animal_type

  def initialize(animal_type, name)
    @animal_type = animal_type
    @name = name
  end

  def to_s
    "a #{animal_type} named #{name}"
  end
end

class Owner
  attr_reader :pets, :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    self.pets.count
  end

  def adopt_new_pet(pet)
    self.pets.push(pet)
  end
end

class Shelter
  attr_accessor :people_who_have_adopted

  def initialize
    @people_who_have_adopted = []
  end

  def adopt(owner, pet)
    owner.adopt_new_pet(pet)
    self.people_who_have_adopted.push(owner) unless self.people_who_have_adopted.include?(owner)
  end

  def print_adoptions
    self.people_who_have_adopted.each do |owner|
      if owner.name == "Animal Shelter"
        puts "The Animal Shelter has the following unadopted pets:"
      else
        puts "#{owner.name} has adopted the following pets:"
      end
      owner.pets.each do |pet|
        puts pet
      end
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
bucky        = Pet.new('rabbit', 'Bucky')
asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
dflanary = Owner.new('D Flanary')
ashelter = Owner.new('Animal Shelter')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(dflanary, bucky)
shelter.adopt(ashelter, asta)
shelter.adopt(ashelter, laddie)
shelter.adopt(ashelter, fluffy)
shelter.adopt(ashelter, kat)
shelter.adopt(ashelter, ben)
shelter.adopt(ashelter, chatterbox)
shelter.adopt(ashelter, bluebell)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{dflanary.name} has #{dflanary.number_of_pets} adopted pets."
puts "The #{ashelter.name} has #{ashelter.number_of_pets} unadopted pets"
