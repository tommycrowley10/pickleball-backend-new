require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/matches.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Match.count, data.length
  end

  test "create" do
    assert_difference "Match.count", 1 do
      post "/matches.json", params: { team_one_player_one: User.first.id, team_one_player_two: User.second.id, team_two_player_one: User.third.id, team_two_player_two: User.fourth.id, team_one_score: 11, team_two_score: 7 }
      assert_response 200
    end
  end
end
