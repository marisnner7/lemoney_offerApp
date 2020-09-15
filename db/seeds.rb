# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "destroy all offers"
Offer.destroy_all
puts "destroy all users"
User.destroy_all

puts 'creating a admin'
admin = User.create!(email:"admin@example.com", password:"123456", admin: true)

puts 'creating 15 offers without ends_at date'
15.times do
  offer = Offer.new(advertiser_name: Faker::Company.name, url: Faker::Internet.url,
    description: Faker::Lorem.sentence,
    starts_at: Faker::Date.between(from: 2.days.ago, to: 5.days.from_now),
    disable: Random.rand > 0.7, premium: Random.rand > 0.8, user: admin)
  
  offer.save!
end

puts "creating 10 offers with ends_at date"
10.times do
  offer = Offer.new(advertiser_name: Faker::Company.name, url: Faker::Internet.url,
    description: Faker::Lorem.sentence,
    disable: Random.rand > 0.7, premium: Random.rand > 0.8, user: admin,
    starts_at: Faker::Date.between(from: 2.days.ago, to: 5.days.from_now),
    ends_at: Faker::Date.between(from: 5.days.from_now, to: 10.days.from_now))
  
  offer.save!
end

