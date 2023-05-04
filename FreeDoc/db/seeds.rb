# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

10.times do
  doctor =
    Doctor.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      specialty: Faker::Science.science,
      zip_code: Faker::Address.postcode
    )
end

10.times do
  patient =
    Patient.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
end

10.times do
  appointment =
    Appointment.create!(
      date: Faker::Date.between(from: "2023-03-23", to: "2030-01-01"),
      doctor_id: Doctor.all.pluck(:id).sample,
      patient_id: Patient.all.pluck(:id).sample
    )
end
