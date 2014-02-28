class Car
	attr_accessor :cars_per_color

	@@total_car_count = 0
	@@cars_per_color = {}
	

	def to_s()
		"I'm a #{@color} car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color='yellow')
		@color = color
		@fuel = 10
		@distance = 0

		if @@cars_per_color.has_key?(color)
			@@cars_per_color[color] += 1
		else
			@@cars_per_color[color] = 1 
		end
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end

	def color=(color)
		@color = color
	end

	def self.most_popular_color
		@@cars_per_color.select { |k, v| v == @@cars_per_color.values.max }.keys.join
	end

	def self.total_car_count
		@@total_car_count
	end

	def self.cars_per_color
		@@cars_per_color
	end
end

car_a = Car.new("blue")
car_b = Car.new("red")
car_c = Car.new("red")
car_d = Car.new
car_e = Car.new("red")
# puts car_a
# puts car_b
# car_a.drive(10)
# puts car_a
# puts car_b
# car_a.drive(232)
# car_b.drive(117)
# puts car_a
# puts car_b
# puts Car.cars_per_color
# puts Car.cars_per_color.keys
# puts Car.most_popular_color
best_color = Car.most_popular_color
puts best_color
car_f = Car.new(best_color)
puts Car.cars_per_color
puts car_f
