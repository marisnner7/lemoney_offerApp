# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
nicole = User.create!({  email: "nicole@gmail.com", password: "1234567", admin: true})
milene = User.create!({ email: "milene@gmail.com", password: "1234567", admin: true })



orange_juice = Offer.create!({ advertiser_name: "Orange Juice", description: "Organic Oranges from Ecuador", url: "https://www.google.com/", starts_at: "05/10/2020", user_id: nicole.id})

coffee = Offer.create!({ advertiser_name: "Cofee Roasters", description: "Organic Blend. All natural and unfiltered", url: "https://www.google.com/", starts_at: "05/10/2020", user_id: milene.id})
