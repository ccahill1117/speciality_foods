# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


10.times do |index|
  Review.create!( author_name: Faker::Name.name,
                  review_text: Faker::Dessert.topping)

end

p "created #{Review.count} desserts"
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
