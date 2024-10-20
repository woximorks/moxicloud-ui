require "test_helper"

class ActionlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actionlog_index_url
    assert_response :success
  end
end
