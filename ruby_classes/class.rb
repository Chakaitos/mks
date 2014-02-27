class Pet
	def set_noise(noise)
		@pet_noise = noise
	end

	def speak
		puts "#{@pet_noise} #{@pet_noise}"
	end

	def fetch(item)
		puts "Here is your #{item}, Master"
	end

	def sleep
		puts "zzzZZZZzzz"
	end
end

class MagicHero
	def set_type(hero_type)
		@hero_type = hero_type # Necromancer, Wizard, Enchanter, Magician
	end

	def type
		puts "I am a #{@hero_type}."
	end

	def cast(spell)
		puts "Casting #{spell} on enemy!"
	end

	def summon_pet(pet_name)
		puts "Summoning pet... He's name is #{pet_name}."
	end
end

##### Extensions #####

# 5.send(:*, 5)
# "omg".send(:upcase)
# ['a', 'b', 'c'].send(:at,1)
# ['a', 'b', 'c'].send(:insert,2, 'o', 'h', 'n', 'o')
# {}.send(:size)
# {character: "Mario"}.has_key?(:character)

# 6 - 32
# {html: true, json: false}.keys
# "MakerSquare".*6)
# "MakerSquare".split('a')
# array = ['alpha', 'beta']
# array.[3]
