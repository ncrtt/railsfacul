require "application_system_test_case"

class TypeItemsTest < ApplicationSystemTestCase
  setup do
    @type_item = type_items(:one)
  end

  test "visiting the index" do
    visit type_items_url
    assert_selector "h1", text: "Type items"
  end

  test "should create type item" do
    visit type_items_url
    click_on "New type item"

    check "Active" if @type_item.active
    fill_in "Name", with: @type_item.name
    click_on "Create Type item"

    assert_text "Type item was successfully created"
    click_on "Back"
  end

  test "should update Type item" do
    visit type_item_url(@type_item)
    click_on "Edit this type item", match: :first

    check "Active" if @type_item.active
    fill_in "Name", with: @type_item.name
    click_on "Update Type item"

    assert_text "Type item was successfully updated"
    click_on "Back"
  end

  test "should destroy Type item" do
    visit type_item_url(@type_item)
    click_on "Destroy this type item", match: :first

    assert_text "Type item was successfully destroyed"
  end
end
