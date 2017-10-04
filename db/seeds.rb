# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  FreelanceDocument.create!(
    title: Faker::Lorem.words(rand(1..4)).join(' ').titleize,
    description: Faker::Lorem.sentence,
    file_url: Faker::Internet.url,
    image_url: Faker::LoremPixel.image,
    image_alt: Faker::Lorem.sentence,
    client_id: rand(1..5),
  )
end