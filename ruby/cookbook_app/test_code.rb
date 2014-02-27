require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "place beans in tortilla", "roll up"])
guacamole = Recipe.new("Guacamole", ["avocado", "pico de gallo", "salt"], ["mash avocado", "mix with pico de gallo", "add salt to taste"])

ita_cuisine = Cookbook.new("Italian Cooking")
crab_ravioli = Recipe.new("Crab Ravioli", ["pasta", "white sauce", "crab"], ["fill pasta with crab", "boil pasta", "mix pasta with white sauce"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
burrito.add_ingredient("hot sauce")
burrito.add_step("Add hot sauce")

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(guacamole)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]
ita_cuisine.add_recipe(crab_ravioli)

mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

burrito.print_recipe
crab_ravioli.print_recipe

mex_cuisine.print_cookbook