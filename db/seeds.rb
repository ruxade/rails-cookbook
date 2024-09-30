# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# categories
# italian = Category.create!(name: "Italian")
# salads = Category.create!(name: "Salads")
# breakfast = Category.create!(name: "Breakfast")
# quick_easy = Category.create!(name: "Quick & Easy")

# # recipes
# 4.times do
#   Recipe.create!(
#     name: Faker::Food.dish,
#     description: Faker::Food.description,
#     image_url: Faker::Avatar.image,
#     rating: rand(0..10).to_f
#   )
# end



Recipe.create!(
  name: "Butter Chicken",
  description: "A rich and creamy curry made with marinated chicken and a blend of spices, served with naan or rice.",
  image_url: "https://example.com/butter_chicken.jpg",
)

Recipe.create!(
  name: "Biryani",
  description: "A fragrant rice dish layered with marinated chicken, spices, and cooked to perfection.",
  image_url: "https://example.com/biryani.jpg",
  rating: 8.5
)

Recipe.create!(
  name: "Pad Thai",
  description: "Stir-fried rice noodles with shrimp, tofu, and bean sprouts, tossed in a tangy sauce and topped with peanuts.",
  image_url: "https://example.com/pad_thai.jpg", 
)

Recipe.create!(
  name: "Hummus",
  description: "A creamy blend of chickpeas, tahini, lemon juice, and garlic, served with pita bread or vegetables.",
  image_url: "https://example.com/hummus.jpg",
  rating: 9.5
)
