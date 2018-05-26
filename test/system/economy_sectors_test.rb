require "application_system_test_case"

class EconomySectorsTest < ApplicationSystemTestCase
  setup do
    @economy_sector = economy_sectors(:one)
  end

  test "visiting the index" do
    visit economy_sectors_url
    assert_selector "h1", text: "Economy Sectors"
  end

  test "creating a Economy sector" do
    visit economy_sectors_url
    click_on "New Economy Sector"

    fill_in "Name", with: @economy_sector.name
    click_on "Create Economy sector"

    assert_text "Economy sector was successfully created"
    click_on "Back"
  end

  test "updating a Economy sector" do
    visit economy_sectors_url
    click_on "Edit", match: :first

    fill_in "Name", with: @economy_sector.name
    click_on "Update Economy sector"

    assert_text "Economy sector was successfully updated"
    click_on "Back"
  end

  test "destroying a Economy sector" do
    visit economy_sectors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Economy sector was successfully destroyed"
  end
end
