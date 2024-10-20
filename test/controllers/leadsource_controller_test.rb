require "test_helper"

class LeadsourceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leadsource_index_url
    assert_response :success
  end
end
