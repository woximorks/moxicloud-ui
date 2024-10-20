require "test_helper"

class SoldlistingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get soldlisting_index_url
    assert_response :success
  end
end
