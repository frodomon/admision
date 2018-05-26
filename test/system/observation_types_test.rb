require "application_system_test_case"

class ObservationTypesTest < ApplicationSystemTestCase
  setup do
    @observation_type = observation_types(:one)
  end

  test "visiting the index" do
    visit observation_types_url
    assert_selector "h1", text: "Observation Types"
  end

  test "creating a Observation type" do
    visit observation_types_url
    click_on "New Observation Type"

    fill_in "Nombre", with: @observation_type.nombre
    click_on "Create Observation type"

    assert_text "Observation type was successfully created"
    click_on "Back"
  end

  test "updating a Observation type" do
    visit observation_types_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @observation_type.nombre
    click_on "Update Observation type"

    assert_text "Observation type was successfully updated"
    click_on "Back"
  end

  test "destroying a Observation type" do
    visit observation_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Observation type was successfully destroyed"
  end
end
