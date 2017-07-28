class Transform
  def initialize(string)
    @string = string
  end

  def self.lowercase(new_string)
    new_string.downcase
  end

  def uppercase
    @string.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase # expect 'ABC'
puts Transform.lowercase('XYZ') # expect 'xyz'
