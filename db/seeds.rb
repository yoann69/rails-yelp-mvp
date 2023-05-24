puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pasta = {name: "pasta", address: "4 rue de la paella", phone_number: "06 35 65 65 65", category: "italian", }
chorizo =  {name: "chrozio", address: "4 rue de la saucisse", phone_number: "06 35 65 65 66", category: "italian", }
gnocchi =  {name: "gnocchi", address: "4 rue de la bolognaise", phone_number: "06 35 65 65 67", category: "italian", }
bistro =  {name: "bistro", address: "4 rue de la pinte", phone_number: "06 35 65 65 68", category: "french", }
kong =  {name: "kong", address: "4 rue du nems", phone_number: "06 35 65 65 69", category: "chinese", }

[pasta, chorizo, gnocchi, bistro, kong].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
