# Demonstration of a Ruby class
class Person
  # These specify attributes that can be set and obtained through their name
  attr_accessor :name, :age

  # Method called when creating an instance of the class
  def initialize(name, age)
    self.name = name
    self.age = age
  end

  # Method to introduce person
  def introduce
    puts "Hi my name is #{name} and I am #{age} years old"
  end
end
# Create an instance of the Person class passing in 2 parameters
person = Person.new ARGV[0] || 'Bob', (18..80).to_a.sample
# Call the `introduce method on this person`
person.introduce
