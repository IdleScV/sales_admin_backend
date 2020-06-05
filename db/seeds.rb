# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sale.destroy_all
Item.destroy_all
Customer.destroy_all
Merchant.destroy_all

joe = Customer.create(name: "Joe")
trader = Merchant.create(name: "Traders", address: "somewhere by the coast")
long_bean = Item.create(description: "Long Beans", price: "5.99", merchant: trader)
sale1 = Sale.create(customer: joe, item: long_bean, quantity: 10)
