# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning the database'
Restaurant.destroy_all
puts 'All clean, lets create some restaurants'

100.times do
  restaurant = Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: ['Eric Jacquin', 'Henrique Fogaça', 'Paola Carrossela', 'David'].sample
  })
  puts "Created restaurant #{restaurant.id}"
end
puts 'All done'
