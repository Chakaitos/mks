class Cookbook
	attr_accessor :title, :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles
		@recipes.each do |recipe|
			puts recipe.title
		end
	end

	def recipe_ingredients
		@recipes.each do |recipe|
			puts "This are the ingredients for #{recipe.title}: #{recipe.ingredients}"
		end
	end

	def print_cookbook
		puts "If you want really good #{@title}, here are some recipes:"
		
		@recipes.each do |recipe|
			puts "To make #{recipe.title}, you need the following ingredients:"
			recipe.ingredients.each do |ingredient|
				puts "- #{ingredient}"
			end
			
			puts "Follow these steps:"

			n = 1
			recipe.steps.each do |step|
				puts "#{n}. #{step}"
				n += 1
			end
		end
	end
end

class Recipe
	attr_accessor :title, :ingredients, :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "To make #{@title}, you need the following ingredients:"
		
		@ingredients.each do |ingredient|
			puts "- #{ingredient}"
		end
		
		puts "Follow these steps:"

		n = 1
		@steps.each do |step|
			puts "#{n}. #{step}"
			n += 1
		end
	end

	def add_ingredient(ingredient)
		@ingredients << ingredient
		puts "#{ingredient} was added to the ingredients list."
	end

	def add_step(step)
		@steps << step
		puts "A new step was added to the process of this recipe."
	end
end