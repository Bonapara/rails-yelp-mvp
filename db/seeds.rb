# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create(name: "Epicure", category: "french")
Restaurant.create(name: "Namaste", category: "Indian")
Restaurant.create(name: "Socrate", category: "Grec")
Restaurant.create(name: "Le soleil de Paris", category: "Astiatique")
Restaurant.create(name: "Au bonheur des gourmands", category: "french")

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:  "chinese",
    phone_number:        "0145675469"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:  "italian",
    phone_number:        "0145675469"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:  "japanese",
    phone_number:        "0145675469"
  },
  {
    name:         "Le Soleil de Rio",
    address:      "5 rue Rio 75005 Paris",
    category:  "french",
    phone_number:        "0145675469"
  },
  {
    name:         "Namaste",
    address:      "Ahmedabad 75016 Paris",
    category:  "french",
    phone_number:        "0145675469"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
