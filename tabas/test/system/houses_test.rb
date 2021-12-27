require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "creating a House" do
    visit houses_url
    click_on "New House"

    fill_in "Address", with: @house.address
    fill_in "Bathrooms", with: @house.bathrooms
    fill_in "Name", with: @house.name
    fill_in "Picture one", with: @house.picture_one
    fill_in "Picture three", with: @house.picture_three
    fill_in "Picture two", with: @house.picture_two
    fill_in "Prince", with: @house.prince
    fill_in "Rooms", with: @house.rooms
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "updating a House" do
    visit houses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @house.address
    fill_in "Bathrooms", with: @house.bathrooms
    fill_in "Name", with: @house.name
    fill_in "Picture one", with: @house.picture_one
    fill_in "Picture three", with: @house.picture_three
    fill_in "Picture two", with: @house.picture_two
    fill_in "Prince", with: @house.prince
    fill_in "Rooms", with: @house.rooms
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "destroying a House" do
    visit houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House was successfully destroyed"
  end
end
