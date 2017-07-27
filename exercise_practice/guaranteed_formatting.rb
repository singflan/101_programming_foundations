class Person
  attr_writer :name

  def name
    @name.downcase.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name
