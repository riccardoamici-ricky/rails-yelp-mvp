# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all if Rails.env.development?
puts "Creating restaurants..."
raikou = { name: "Raikou", address: "7 Boundary St, London E2 7JE", category: "italian" }
entei =  { name: "Entei", address: "56A Shoreditch High St, London E1 6PQ", category: "french" }
suicune = { name: "Suicune", address: "7 Boundary St, London E2 7JE", category: "japanese" }
hooh = { name: "Ho-oh", address: "7 Boundary St, London E2 7JE", category: "italian" }
lugia = { name: "Lugia", address: "55 Kuglerstr., Berlin E2 7JE", category: "japanese" }
[raikou, entei, suicune, hooh, lugia].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
