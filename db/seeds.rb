# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

file = File.open("/home/kali/Downloads/text")
file_data = file.readlines.map(&:chomp)
file_data.each do |country|
  Country.create!(name: country)
end
file.close

