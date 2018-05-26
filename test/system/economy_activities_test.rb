require "application_system_test_case"

class EconomyActivitiesTest < ApplicationSystemTestCase
  setup do
    @economy_activity = economy_activities(:one)
  end

  test "visiting the index" do
    visit economy_activities_url
    assert_selector "h1", text: "Economy Activities"
  end

  test "creating a Economy activity" do
    visit economy_activities_url
    click_on "New Economy Activity"

    fill_in "Name", with: @economy_activity.name
    click_on "Create Economy activity"

    assert_text "Economy activity was successfully created"
    click_on "Back"
  end

  test "updating a Economy activity" do
    visit economy_activities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @economy_activity.name
    click_on "Update Economy activity"

    assert_text "Economy activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Economy activity" do
    visit economy_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Economy activity was successfully destroyed"
  end
end
