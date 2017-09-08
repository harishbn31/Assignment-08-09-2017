# DCTa2e9 - Classy Classes
# Your task is to complete this Class, the Person class has been created. You must add in the Constructor method to accept a hash with a name as string and an age as number, complete the get and set methods and it should should return

# johns age is 34

class Person
attr_accessor :name, :age
 def initialize(data)
 	@name = data[:name]
 	@age = data[:age]
 end
 def details
 	puts "#{@name} age is #{@age}"
 end
end
p1 = Person.new({:name => "har", :age => 25})

puts p1.details
