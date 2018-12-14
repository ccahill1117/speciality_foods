# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Review.delete_all
Product.delete_all

100.times do
 Product.create!(name: Faker::GreekPhilosophers.name,
                cost: Faker::Number.decimal(2),
                country: Faker::Address.country)
end


#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
