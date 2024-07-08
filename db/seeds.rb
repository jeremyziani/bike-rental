# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(email: "jeje@gmail.com", password: "123456")

Bike.destroy_all

Bike.create!(name: "XXX01", description: "Vélo de course", user_id: User.first.id)
Bike.create!(name: "XXX02", description: "Vélo de ville", user_id: User.first.id)
Bike.create!(name: "XXX03", description: "Vélo de montagne", user_id: User.first.id)
Bike.create!(name: "XXX04", description: "Vélo de course", user_id: User.first.id)
Bike.create!(name: "XXX05", description: "Vélo de ville", user_id: User.first.id)
