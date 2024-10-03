# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Category.create(name: "Men", details: "Men's wear main category")
Category.create(name: "Women", details: "Women's wear main category")
Category.create(name: "Shirt", category_id: 1, details: "Shirt category for Men")
Category.create(name: "Hijab", category_id: 2, details: "Hijab category for Women")
Category.create(name: "T-shirt", category_id: 1, details: "T-shirt for men")