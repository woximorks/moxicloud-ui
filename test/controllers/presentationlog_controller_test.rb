require "test_helper"

class PresentationlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presentationlog_index_url
    assert_response :success
  end
end
