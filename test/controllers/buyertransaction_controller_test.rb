require "test_helper"

class BuyertransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buyertransaction_index_url
    assert_response :success
  end
end
