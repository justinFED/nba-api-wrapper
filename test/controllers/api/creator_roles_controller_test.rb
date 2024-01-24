require 'test_helper'

class Api::CreatorRolesControllerTest < ActionDispatch::IntegrationTest
  test "should get all players" do
    get api_get_all_players_url
    assert_response :success

    response_json = JSON.parse(response.body)
    
    assert_not_nil response_json["data"]
    assert_not_empty response_json["data"]
  end
end
