# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do |i|
Restaurant.create!(
  name: "Restaurant #{i + 1}",
  address: "Address #{i + 1}",
  phone_number: "123-456-789#{i}",
  category: "Category #{i + 1}"
)
end
