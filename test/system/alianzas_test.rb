require "application_system_test_case"

class AlianzasTest < ApplicationSystemTestCase
  setup do
    @alianza = alianzas(:one)
  end

  test "visiting the index" do
    visit alianzas_url
    assert_selector "h1", text: "Alianzas"
  end

  test "creating a Alianza" do
    visit alianzas_url
    click_on "New Alianza"

    fill_in "Nombre", with: @alianza.nombre
    click_on "Create Alianza"

    assert_text "Alianza was successfully created"
    click_on "Back"
  end

  test "updating a Alianza" do
    visit alianzas_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @alianza.nombre
    click_on "Update Alianza"

    assert_text "Alianza was successfully updated"
    click_on "Back"
  end

  test "destroying a Alianza" do
    visit alianzas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alianza was successfully destroyed"
  end
end
