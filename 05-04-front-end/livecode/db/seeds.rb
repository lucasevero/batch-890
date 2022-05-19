# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  puts 'Cleaning the database'
  Plant.destroy_all
  Garden.destroy_all
end

puts 'Lets create some gardens'
little = Garden.create({
  name: "My beautiful garden",
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
})
puts 'Garden 1 created'
other = Garden.create({
  name: "Another beautiful garden",
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
  })
puts 'Garden 2 created'

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: little
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: little
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: other
)
puts 'Plants created!'

names = ["Fruit tree", "Cactus", "Greasy plant", "Flower", "Ferns", "Conifers"]

names.each do |name|
  Tag.create!(name: name)
end
puts "Tags created!"
puts "All done!"
