# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing the db..."
User.destroy_all
Bot.destroy_all
Chatroom.destroy_all

puts "Creating a user"
user_one = User.create!(
  email: "user_email@email.com",
  password: "secret"
)

puts "Creating a bot"
bot_one = Bot.create!(
  phrases: "This is room 1, I am bot 1.",
  description: "Friendly bot to chat everyday",
  category: "Friendly"
)

puts "Creating a chatroom"
chatroom_one = Chatroom.create!(
  name: "room 1",
  bot_id: bot_one.id,
  user_id: user_one.id
)
