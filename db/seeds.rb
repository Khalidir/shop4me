# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'
Perfume.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts 'Creating categories...'
oil = Category.create!(name: 'oil')
spray = Category.create!(name: 'spray')

puts 'Creating perfumes...'
Perfume.create!(price: 70,sku: 'arabian-oud', name: 'Arabian Knight',    category: spray, photo_url: 'ArabianKnight.png', description: 'Arabian Knight is a perfume by Arabian Oud for women and men and was released in 2014. The scent is spicy-floral.')
Perfume.create!(price: 65,sku: 'madawi-arabian-oud', name: 'Madawi Oud', category: spray, photo_url: 'MadawiOud.png')
Perfume.create!(price: 87,sku: 'asala-oud',   name: 'Asala Oil',         category: oil, photo_url: 'AsalaOil.png')
Perfume.create!(price: 72,sku: 'midnight-oud',   name: 'Midnight Oud',   category: spray, photo_url: 'midnightoud.png')
Perfume.create!(price: 55,sku: 'borneo-oud',   name: 'Borneo Oud',   category: spray, photo_url: 'BorneoOud.png')
Perfume.create!(price: 67,sku: 'x-oud',   name: 'X Oud',   category: oil, photo_url: 'XOud.png')
Perfume.create!(price: 42,sku: 'woody-oil',   name: 'Woody Oil',   category: oil, photo_url: 'WoodyOil.png')
Perfume.create!(price: 80,sku: 'oud-manifica',   name: 'Oud Magnifica',   category: oil, photo_url: 'OudMagnifica.png')
Perfume.create!(price: 61,sku: 'treasure-oud',   name: 'Treasure Oud',   category: oil, photo_url: 'TreasureOud.png')
puts 'Finished!'


