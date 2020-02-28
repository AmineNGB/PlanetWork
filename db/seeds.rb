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
  {
    name:         'Alderaan',
    description:      'Alderaan est une géante gazeuse au climat tempéré, idéale pour un pic-nic ou pour une activité en pleine air',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Alderaan.jpg'
  },
  {
    name:         'Aquatus',
    description:      "Aquatus est une planete constitué essentielement d'eau, c'est un spot mondialement connue pour le surf avec ses vagues de 100m de hauteurs",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Aquatus.jpg'
  },
  {
    name:         'Blackout',
    description:      "Blackout est la planète la plus éloigné de tout, le seul moyen d'y aller, c'est de se perdre !",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Blackout.jpg'
  },
  {
    name:         'Caniculus',
    description:      'Mercure est la planète la plus chaude connu à ce jour, idéale pour un sauna ou pour un coup de soleil',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Caniculus.jpg'
  },
  {
    name:         'Dagobah',
    description:      'Dagobah est une planète oubliée au milieu du Système Sluis, dans la Bordure Extérieure. Bien que proche de mondes comme Xagobah ou Sluis Van, la planète fut oubliée de tous. Aucune carte stellaire ne relate son existence',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Dagobah.jpeg'
  },
  {
    name:         'Darka',
    description:      "Darka est une planete ... on sait pas trop en faite, aucune information est existante, à vos risques et périls",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Darka.jpg'
  },
  {
    name:         'Endor',
    description:      'Endor est LA Planete pour faire une bonne sieste ! idéale pour aller se reposer apres un livecode ou un cours un peu trop abstrait',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Endor.jpeg'
  },
  {
    name:         'Erectus',
    description:      "Erectus est la planete du Vice absolue, tout ce qui est interdit ailleur y est autoriser; bref c'est le bordel",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Erectus.jpg'
  },
  {
    name:         'Korus',
    description:      "Korus est une planete mysterieuse, beaucoup y sont partit, peu sont revenue. Idéale pour ceux qui n'ont pas assez d'argent pour un billet retour",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Korus.jpeg'
  },
  {
    name:         'Mustafar',
    description:      "Mustafar est une des grosses planetes gazeuses que l'on trouve dans la galaxie Flatulis, tout y est tres beau mais des qu'on s'approche de trop pres, l'odeur est tres desagréable",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Mustafar.jpg'
  },
  {
    name:         'Naboo',
    description:      "Elu plusieurs fois par ses propres habitants comme la planete la plus jolie de tout l'univers, Naboo jouit d'une position idéale pour tout les amoureux de la nature",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Naboo.jpg'
  },
  {
    name:         'Namek',
    description:      "Namek  est une planète d'un système solaire éloigné. Elle est la planète d'origine du Tout-Puissant, de Piccolo Daimaô, ainsi que de Dende et des autres nameks connus.",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Namek.jpg'
  },
  {
    name:         'Raidar',
    description:      "Raidar est la planete idéale pour les courses de voitures, la surface est constitué essentielement de routes et d'autoroutes. Attention à la police tres présente sur les grands axes",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Raidar.jpg'
  },
  {
    name:         'Proxima',
    description:      "Proxima n'est pas si loin, elle n'est pas si pres non plus",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Proxima.jpeg'
  },
  {
    name:         'Radak',
    description:      "Radak n'a jamais vraiment existé, beaucoup prétende l'avoir vu mais on a jamais eu de preuve de son éxistance",
    price:     rand(800..4000),
    user: user,
    photo_file: 'radak.jpg'
  },
  {
    name:         'Sombro',
    description:      'Sombro est une planete tres sombre, il fait nuit en permanence',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Sombro.jpg'
  },
  {
    name:         'Tatooine',
    description:      'Tatooine est une planete desertique, il y a pas grand monde à part du sable du sable et encore du sable',
    price:     rand(800..4000),
    user: user,
    photo_file: 'Tatouine.jpg'
  },
  {
    name:         'Tissan',
    description:      "Tissane  est une reserve naturelle, beaucoup d'espece en voie de disparition y vivent en liberté comme les licornes ou les dinosaures",
    price:     rand(800..4000),
    user: user,
    photo_file: 'tissan.jpg'
  },
  {
    name:         'Vegeta',
    description:      "Dans le manga Dragon Ball, Vegeta est le nom de la planète d'où sont originaires les Saiyans (Saiya-jin). C'est la planète éponyme de Végéta, celui-ci étant le fils du Roi Vegeta, et donc le prince héritier.",
    price:     rand(800..4000),
    user: user,
    photo_file: 'Vegeta.jpg'
  },
  {
    name:         'Yashyyk',
    description:      "Il s'agit d'une planète forestière connue pour être le lieu d'origine des Wookiees,",
    price:     rand(800..4000),
    user: user,
    photo_file: 'yashyyk.jpg'
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


