puts "🌱 Seeding spices..."

# Seed your database here
Category.create(name: "Bug")
Category.create(name: "Feature")
Category.create(name: "New App")
Task.create(name: "Starbucks Caffeine", category_id: 1, description: "Fix the filter feature that allows a user to filter coffees based on a dropdown")
Task.create(name: "Coding Portfolio Page", category_id: 2, description: "Create an endless cycling color change background")
Task.create(name: "Wayfarer", category_id: 2, description: "Create a die function that can be used to roll a D20 or a D6")
Task.create(name: "Harry Potter House Quiz", category_id: 3, description: "Have people answer a series of questions that sorts them into each house")
Task.create(name: "Coding Portfolio Page", category_id: 2, description: "Jazz it up a bit!")

puts "✅ Done seeding!"
