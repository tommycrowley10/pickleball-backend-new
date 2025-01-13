# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "John Doe", email: "john.doe@example.com", password: "SecurePass123!")
User.create(name: "Jane Smith", email: "jane.smith@example.com", password: "P@ssw0rd!")
User.create(name: "Jane Smith", email: "jane.smith@example.com", password: "P@ssw0rd!")
User.create(name: "Emily Brown", email: "emily.brown@example.com", password: "Brownie_2024")
User.create(name: "Chris Williams", email: "chris.williams@example.com", password: "Cr!s$W12")
User.create(name: "Olivia Davis", email: "olivia.davis@example.com", password: "Oliv@2024")
User.create(name: "Tommy Crowley", email: "tommy@example.com", password: "next_question_please")
User.create(name: "Jeremiah Smith", email: "jeremiah.s@example.com", password: "tuddy")

Match.create(team_one_player_one: 1, team_one_player_two: 2, team_two_player_one: 3, team_two_player_two: 4, team_one_score: 11, team_two_score: 7)
