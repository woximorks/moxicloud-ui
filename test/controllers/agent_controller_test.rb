require "test_helper"

class AgentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agent_index_url
    assert_response :success
  end
end
