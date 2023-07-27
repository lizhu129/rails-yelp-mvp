# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
fulu = { name: 'Fulu Mandarijn', address: 'Rokin 26',
         phone_number: '0206230885', category: 'chinese' }
renato = { name: "Renato's Pizzeria", address: 'Karel du Jardinstraat 32',
           phone_number: '0206732300', category: 'italian' }
sushi = { name: 'Sushi Fanatics', address: 'Andreas Bonnstraat 36',
          phone_number: '0202200153', category: 'japanese' }
bleu = { name: 'Bleu', address: 'Prinsenstraat 10HS',
         phone_number: '0203621340', category: 'french' }
gollem = { name: 'Cafe Gollem', address: 'Raamsteeg 4',
           phone_number: '0206129444', category: 'belgian' }

[fulu, renato, sushi, bleu, gollem].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
