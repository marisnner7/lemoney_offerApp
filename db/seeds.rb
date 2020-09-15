# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create!(email:"admin@example.com", password:"123456", admin: true)


Offer.create!( advertiser_name: "Garmin Forerunner 235", description: "GPS running watch with wrist based heart rate and display type is sunlight visible", url: "https://www.google.com/", starts_at: "05/10/2020", user: admin)

Offer.create!( advertiser_name: "Cofee Roasters", description: "Organic Blend. All natural and unfiltered", url: "https://www.google.com/", starts_at: "05/12/2020", user: admin)
