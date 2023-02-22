# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
dishoom = { name: 'dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_jeast = { name: 'Pizza jeast', address: '56B Shoreditch High St, London E1 6PQ', category: 'japanese' }
les_trois_forts = { name: 'les_trois_forts', address: '36 Bd Charles Livon,, 13007 marseille', category: 'belgian' }
casapappa = { name: 'casapappa', address: '17 rue breteuil, 13006 marseille', category: 'italian' }
le_culti = { name: 'le_culti', address: '7 place du terrail, 13007 marseille', category: 'french' }
[dishoom, pizza_jeast, le_culti, casapappa, les_trois_forts].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
