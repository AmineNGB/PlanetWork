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

user2 = User.new
user2.email = 'nico@example.com'
user2.password = 'password'
user2.save!

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
    description:      'troisieme planete, tres confortale et pas chere et desertique',
    price:     '1200',
    user: user,
  },
    {
    name:         'Jupiter',
    description:      'quatrieme planete, ultra confortale mais chere',
    price:     '2100',
    user: user,
  },
  {
    name:         'Terre',
    description:      'cinquieme planete, tres confortale et pas chere, mais vous vous y sentirez comme chez vous',
    price:     '800',
    user: user2,
  },
  {
    name:         'Uranus',
    description:      'sixieme planete, moyennement confortable, mais tres calme',
    price:     '1900',
    user: user2,
  }
]
Planet.create!(planets_attributes)

reservations_attributes = [
  # {
  #   date:         '30/03/2021',
  #   planet:     Planet.find_by(name: "Mars"),
  #   user: user,
  # },
  {
    date:         '30/04/2021',
    planet:     Planet.find_by(name: 'Uranus'),
    user: user,
  }]
Reservation.create!(reservations_attributes)

puts 'Finished!'

Planet.all.each do |el|
  p el.name
end


