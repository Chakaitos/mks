### 1 - 2 - 3
class Hair
	attr_accessor :color, :length

	def initialize(color, length)
		@color = color
		@length = length
	end
end

my_hair = Hair.new("blonde", "short")
p my_hair.color == "blonde"

###############========================################

### 4

class Person
	def initialize(name)
		@name = name
	end

	def name
		@name
	end

	def say_names(name_array)
		name_array.each do |person|
			puts person.name
		end
	end
end

names = [Person.new("Tim"), Person.new("Jenny"), Person.new("Sam")]
ralph = Person.new("Ralph")
ralph.say_names(names)