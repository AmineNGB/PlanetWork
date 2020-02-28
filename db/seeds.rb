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
    description:      'Mercure est la planète la plus proche du Soleil et la moins massive du Système solaire, tres confortale',
    price:     rand(800..4000),
    user: user,
    photo_file: 'mercure.jpeg'
  },
  {
    name:         'Venus',
    description:      'seconde planete, tres confortale et pas chere',
    price:     rand(800..4000),
    user: user,
    photo_file: 'venus.jpeg'
  },
  {
    name:         'Terre',
    description:      'troisieme planete, tres confortale et pas chere, mais vous vous y sentirez comme chez vous',
    price:     rand(800..4000),
    user: user,
    photo_file: 'terre.jpg'
  },
  {
    name:         'Mars',
    description:      'quatrieme planete, tres confortale et pas chere et desertique',
    price:     rand(800..4000),
    user: user,
    photo_file: 'mars.jpeg'
  },
    {
    name:         'Jupiter',
    description:      'cinquieme planete, ultra confortale mais chere',
    price:     rand(800..4000),
    user: user,
    photo_file: 'jupiter.jpeg'
  },
  {
    name:         'Uranus',
    description:      'sixieme planete, moyennement confortable, mais tres calme',
    price:     rand(800..4000),
    user: user,
    photo_file: 'uranus.jpeg'

  },
  {
    name:         'Neptune',
    description:      'septieme planete, moyennement confortable, mais tres calme',
    price:     rand(800..4000),
    user: user,
    photo_file: 'neptune.jpeg'
  },
]

ap "je suis la"

planets_attributes.each do |planets_attribute|
  ap "---------------------------------"
  photo_file = planets_attribute.delete(:photo_file)
  ap planets_attribute
  planet = Planet.create!(planets_attribute)
  ap photo_file
  planet.photo.attach(io: File.open("photo_seed/#{photo_file}"), filename: 'toto.svg')
end

reservation_att = [
  {
    date: 20201001,
    user: user,
    planet: Planet.all.sample,
  },
  {
    date: 20201018,
    user: user,
    planet: Planet.all.sample,
  },
  {
    date: 20211201,
    user: user2,
    planet: Planet.all.sample,
  },
  {
    date: 21211201,
    user: user2,
    planet: Planet.all.sample,
  },
]

Reservation.create!(reservation_att)

puts 'Finished!'

Planet.all.each do |el|
  p el.name
end


