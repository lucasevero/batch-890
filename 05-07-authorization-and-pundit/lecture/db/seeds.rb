# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

me = User.create(email: "luca@me.com", password: "123456", admin: true)
not_me = User.create(email: "boyan@notme.com", password: "123456")

Restaurant.create({
  name: "Nish Nash",
  user: me
})
Restaurant.create({
  name: "Wooza Bowls",
  user: not_me
})
Restaurant.create({
  name: "Meson El Cordobes",
  user: me
})
Restaurant.create({
  name: "Restaurante Maracanã Rodizio",
  user: me
})
Restaurant.create({
  name: "El Inca",
  user: not_me
})
Restaurant.create({
  name: "Al Andalus",
  user: not_me
})
Restaurant.create({
  name: "Coyacan",
  user: me
})
