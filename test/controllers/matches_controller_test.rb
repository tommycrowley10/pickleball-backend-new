require "test_helper"

class MatchesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/matches.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Match.count, data.length
  end
end
