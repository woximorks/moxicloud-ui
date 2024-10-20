require "test_helper"

class SellertransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sellertransaction_index_url
    assert_response :success
  end
end
