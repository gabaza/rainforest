# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
product1 = Product.create(name: "Lighter", description: "Lights things on fire well!", price_in_cents: 99)
product2 = Product.create(name: "Lighter2", description: "Lights things on fire badly!", price_in_cents: 97)
product3 = Product.create(name: "Bong", description: "Big bong now legally compatible with marijuana", price_in_cents: 490)
