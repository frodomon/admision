require "application_system_test_case"

class DependentsTest < ApplicationSystemTestCase
  setup do
    @dependent = dependents(:one)
  end

  test "visiting the index" do
    visit dependents_url
    assert_selector "h1", text: "Dependents"
  end

  test "creating a Dependent" do
    visit dependents_url
    click_on "New Dependent"

    fill_in "Birthdate", with: @dependent.birthdate
    fill_in "Last Name", with: @dependent.last_name
    fill_in "Name", with: @dependent.name
    fill_in "Relationship", with: @dependent.relationship
    fill_in "Request", with: @dependent.request_id
    fill_in "Second Last Name", with: @dependent.second_last_name
    click_on "Create Dependent"

    assert_text "Dependent was successfully created"
    click_on "Back"
  end

  test "updating a Dependent" do
    visit dependents_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @dependent.birthdate
    fill_in "Last Name", with: @dependent.last_name
    fill_in "Name", with: @dependent.name
    fill_in "Relationship", with: @dependent.relationship
    fill_in "Request", with: @dependent.request_id
    fill_in "Second Last Name", with: @dependent.second_last_name
    click_on "Update Dependent"

    assert_text "Dependent was successfully updated"
    click_on "Back"
  end

  test "destroying a Dependent" do
    visit dependents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dependent was successfully destroyed"
  end
end
