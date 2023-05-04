# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#création des villes
4.times do
  City.create(name: Faker::Address.city)
end

#création des dogs
10.times do
  Dog.create(name: Faker::Name.name, city: City.all.sample)
end

#création des dogsitters
5.times do
  Dogsitter.create(name: Faker::Name.name, city: City.all.sample)
end

#création des strolls
3.times do
  Stroll.create(dog: Dog.all.sample, dogsitter: Dogsitter.all.sample)
end