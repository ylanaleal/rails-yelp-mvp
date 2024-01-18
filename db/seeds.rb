# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

yan_ping = {name: "Yan Ping", address: "SCSW 304", phone_number: "123456", category: "chinese" }
la_nonna = {name: "La Nonna", address: "SCN 206", phone_number: "654321", category: "italian" }
le_parisien = {name: "Le Parisien", address: "SCS 103", phone_number: "654987", category: "french" }
numa = {name: "Numa", address: "SCN 404", phone_number: "789456", category: "japanese" }
cecile = {name: "Cecile", address: "SQSW 105", phone_number: "123789", category: "belgian" }

[yan_ping, la_nonna, le_parisien, numa, cecile].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
