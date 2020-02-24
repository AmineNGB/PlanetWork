# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Planet.destroy_all
User.destroy_all

user = User.new
user.email = 'amine@example.com'
user.password = 'password'
user.save!

puts 'Creating planets...'
planets_attributes = [
  {
    name:         'Mercure',
    description:      'premier planete, tres confortale',
    price:     '1400',
    user: user,
  },
  {
    name:         'Venus',
    description:      'seconde planete, tres confortale et pas chere',
    price:     '1100',
    user: user,
  },
  {
    name:         'Mars',
    description:      'quatrieme planete, tres confortale et pas chere et desertique',
    price:     '1200',
    user: user,
  }
]
Planet.create!(planets_attributes)
puts 'Finished!'

Planet.all.each do |el|
  p el.name
end


