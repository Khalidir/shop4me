# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Perfume.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts 'Creating categories...'
oil = Category.create!(name: 'oil')
spray = Category.create!(name: 'spray')

puts 'Creating perfumes...'
Perfume.create!(price: 70,sku: 'arabian-oud', name: 'Arabian Knight',    category: spray, photo_url: 'https://pimages.parfumo.de/480/47815_img-6971-arabian_oud-arabian_knight_480.jpg')
Perfume.create!(price: 65,sku: 'madawi-arabian-oud', name: 'Madawi Oud', category: oil, photo_url: 'https://fimgs.net/mdimg/perfume/social.51307.jpg')
Perfume.create!(price: 87,sku: 'asala-oud',   name: 'Asala Oil',         category: oil, photo_url: 'https://cdn.shopify.com/s/files/1/0127/7840/5947/products/asalah2_700x.jpg')
puts 'Finished!'
