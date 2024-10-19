require "application_system_test_case"

class AssociatedAttrsTest < ApplicationSystemTestCase
  setup do
    @associated_attr = associated_attrs(:one)
  end

  test "visiting the index" do
    visit associated_attrs_url
    assert_selector "h1", text: "Associated attrs"
  end

  test "should create associated attr" do
    visit associated_attrs_url
    click_on "New associated attr"

    fill_in "Associated endpoints", with: @associated_attr.associated_endpoints
    fill_in "Attr title", with: @associated_attr.attr_title
    fill_in "General info", with: @associated_attr.general_info
    click_on "Create Associated attr"

    assert_text "Associated attr was successfully created"
    click_on "Back"
  end

  test "should update Associated attr" do
    visit associated_attr_url(@associated_attr)
    click_on "Edit this associated attr", match: :first

    fill_in "Associated endpoints", with: @associated_attr.associated_endpoints
    fill_in "Attr title", with: @associated_attr.attr_title
    fill_in "General info", with: @associated_attr.general_info
    click_on "Update Associated attr"

    assert_text "Associated attr was successfully updated"
    click_on "Back"
  end

  test "should destroy Associated attr" do
    visit associated_attr_url(@associated_attr)
    click_on "Destroy this associated attr", match: :first

    assert_text "Associated attr was successfully destroyed"
  end
end
