class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.integer :team_one_player_one
      t.integer :team_one_player_two
      t.integer :team_two_player_one
      t.integer :team_two_player_two
      t.integer :team_one_score
      t.integer :team_two_score

      t.timestamps
    end
  end
end
