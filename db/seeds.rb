# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(first_name: "John", last_name: "Doe", email: "john.doe@example.com", username: "johndoe23", password: "SecurePass123!")
User.create(first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", username: "jsmith90", password: "P@ssw0rd!")
User.create(first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", username: "jsmith90", password: "P@ssw0rd!")
User.create(first_name: "Emily", last_name: "Brown", email: "emily.brown@example.com", username: "emily_brown77", password: "Brownie_2024")
User.create(first_name: "Chris", last_name: "Williams", email: "chris.williams@example.com", username: "chris_will", password: "Cr!s$W12")
User.create(first_name: "Olivia", last_name: "Davis", email: "olivia.davis@example.com", username: "olivd21", password: "Oliv@2024")
User.create(first_name: "Tommy", last_name: "Crowley", email: "tommy@example.com", username: "tommycrowley10", password: "next_question_please")
User.create(first_name: "Jeremiah", last_name: "Smith", email: "jeremiah.s@example.com", username: "jsmith", password: "tuddy")

Match.create(team_one_player_one: 1, team_one_player_two: 2, team_two_player_one: 3, team_two_player_two: 4, team_one_score: 11, team_two_score: 7)
