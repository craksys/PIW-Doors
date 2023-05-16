require "application_system_test_case"

class DoorsTest < ApplicationSystemTestCase
  setup do
    @door = doors(:one)
  end

  test "visiting the index" do
    visit doors_url
    assert_selector "h1", text: "Doors"
  end

  test "should create door" do
    visit doors_url
    click_on "New door"

    fill_in "Id", with: @door.id
    fill_in "Name", with: @door.name
    click_on "Create Door"

    assert_text "Door was successfully created"
    click_on "Back"
  end

  test "should update Door" do
    visit door_url(@door)
    click_on "Edit this door", match: :first

    fill_in "Id", with: @door.id
    fill_in "Name", with: @door.name
    click_on "Update Door"

    assert_text "Door was successfully updated"
    click_on "Back"
  end

  test "should destroy Door" do
    visit door_url(@door)
    click_on "Destroy this door", match: :first

    assert_text "Door was successfully destroyed"
  end
end
