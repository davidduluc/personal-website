# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Add this after the Project.create block

BlogPost.create([
  { title: "My First Blog Post", content: "This is the content of my first blog post.", published_at: 2.days.ago },
  { title: "Another Interesting Post", content: "Here's some more interesting content for my blog.", published_at: 1.day.ago },
  { title: "Web Development Tips", content: "Some tips and tricks for web development.", published_at: Time.current }
])

Project.create([
  { title: "Brainfish", date: "2022 - PRESENT", description: "Instant answers for any customer question", image: "https://via.placeholder.com/215" },
  { title: "Layers", date: "PRESENT", description: "A collection of all my design content", image: "https://via.placeholder.com/215" },
  { title: "Notion Icons 3D", date: "2022", description: "Gorgeous 3D icons for your Notion Workspace", image: "https://via.placeholder.com/215" }
])
