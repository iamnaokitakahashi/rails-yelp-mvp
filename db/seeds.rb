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
restaurants = [
  { name: 'Chinese Delighters', address: '123 Bruh St', phone_number: '555-1234-7777', category: 'chinese' },
  { name: 'Italiano Pi Pi Za', address: '456 Ight St', phone_number: '555-5678-8888', category: 'italian' },
  { name: 'Tokyo Drift', address: '789 Yessir St', phone_number: '555-9876-0909', category: 'japanese' },
  { name: 'French Elegance', address: '321 Meme St', phone_number: '555-4321-6723', category: 'french' },
  { name: 'Belgian Waffles', address: '654 Popo St', phone_number: '555-8765-1234', category: 'belgian' }
]

restaurants.each do |restaurant_attrs|
  Restaurant.create!(restaurant_attrs)
end
