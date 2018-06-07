# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cocktail.delete_all
Ingredient.delete_all
Dose.delete_all

puts "number of #{Cocktail.count} should be zero"

cocktail_mojito = Cocktail.create(name: "Mojito")
cocktail_cuba = Cocktail.create(name: "Cuba libre")
cocktail_cubaL = Cocktail.create(name: "Cuba libro")


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.all.each do |cocktail|
  Ingredient.all.each do |ingredient|
    Dose.create(description: "1/3", cocktail_id: cocktail.id, ingredient_id: ingredient.id)
  end

 end

puts "number of #{Cocktail.count} should be > zero"
