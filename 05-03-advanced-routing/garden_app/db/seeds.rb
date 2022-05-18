# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  puts 'Cleaning the database'
  Garden.destroy_all
end

puts 'Lets create some gardens'
Garden.create({
  name: "My beautiful garden",
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
  })
  puts 'Garden 1 created'
  Garden.create({
    name: "Another beautiful garden",
    banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
    })
  puts 'Garden 2 created'
