class Person
  attr_accessor :name

  def name=(names)
    # names_arr = names.split
    # @first_name = names_arr[0]
    # @last_name = names_arr[1]
    @first_name, @last_name = names.split(' ')
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
