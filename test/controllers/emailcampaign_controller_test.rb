require "test_helper"

class EmailcampaignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emailcampaign_index_url
    assert_response :success
  end
end
