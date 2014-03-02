# cities = ["Austin", "San Francisco", "Chicago", "New York"]

def city_love(city_array)    ### 1
	city_array.each do | city |
		puts "I love #{city}."
	end
end

# city_love(cities)

##############===========================################

# values = [[4,2,1],[7,9,6],[3,5,9]]

def value_viewer(value_array)    ### 2
	value_array.each do |value|
		puts value
	end
end

# value_viewer(values)