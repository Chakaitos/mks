hash = {"city" => "Austin", "state" => "Texas"}

p hash["city"]   ### 1

###############========================################

my_hash = {first: "Bryan", last: "Bartley"}

def associated(hash)    ### 2
	hash.each do |k, v|
		puts ":#{k} is associated with #{v}"
	end
end

associated(my_hash)