require "test_helper"

class AssociatedAttrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @associated_attr = associated_attrs(:one)
  end

  test "should get index" do
    get associated_attrs_url
    assert_response :success
  end

  test "should get new" do
    get new_associated_attr_url
    assert_response :success
  end

  test "should create associated_attr" do
    assert_difference("AssociatedAttr.count") do
      post associated_attrs_url, params: { associated_attr: { associated_endpoints: @associated_attr.associated_endpoints, attr_title: @associated_attr.attr_title, general_info: @associated_attr.general_info } }
    end

    assert_redirected_to associated_attr_url(AssociatedAttr.last)
  end

  test "should show associated_attr" do
    get associated_attr_url(@associated_attr)
    assert_response :success
  end

  test "should get edit" do
    get edit_associated_attr_url(@associated_attr)
    assert_response :success
  end

  test "should update associated_attr" do
    patch associated_attr_url(@associated_attr), params: { associated_attr: { associated_endpoints: @associated_attr.associated_endpoints, attr_title: @associated_attr.attr_title, general_info: @associated_attr.general_info } }
    assert_redirected_to associated_attr_url(@associated_attr)
  end

  test "should destroy associated_attr" do
    assert_difference("AssociatedAttr.count", -1) do
      delete associated_attr_url(@associated_attr)
    end

    assert_redirected_to associated_attrs_url
  end
end
