# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  RailwayStation.create(
    title: Faker::Address.city
  )
end

10.times do
  Train.create(
    number: Faker::Address.building_number
  )
end

10.times do
  User.create(
    name: Faker::Movies::StarWars.character
  )
end
