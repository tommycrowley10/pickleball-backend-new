class Match < ApplicationRecord
  belongs_to :team_one_player_one, class_name: "User", foreign_key: "team_one_player_one", optional: true
  belongs_to :team_one_player_two, class_name: "User", foreign_key: "team_one_player_two", optional: true
  belongs_to :team_two_player_one, class_name: "User", foreign_key: "team_two_player_one", optional: true
  belongs_to :team_two_player_two, class_name: "User", foreign_key: "team_two_player_two", optional: true
  #   # app/models/match.rb
  #   class Match < ApplicationRecord
  #     belongs_to :user1, class_name: "User"
  #     belongs_to :user2, class_name: "User"

  #     validates :user1, :user2, presence: true
  #     validates :score_user1, :score_user2, numericality: { only_integer: true }
  #   end
end
