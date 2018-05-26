require "application_system_test_case"

class ReniecsTest < ApplicationSystemTestCase
  setup do
    @reniec = reniecs(:one)
  end

  test "visiting the index" do
    visit reniecs_url
    assert_selector "h1", text: "Reniecs"
  end

  test "creating a Reniec" do
    visit reniecs_url
    click_on "New Reniec"

    fill_in "Address", with: @reniec.address
    fill_in "Birth Departamento", with: @reniec.birth_departamento
    fill_in "Birth Distrito", with: @reniec.birth_distrito
    fill_in "Birth Provincia", with: @reniec.birth_provincia
    fill_in "Birthdate", with: @reniec.birthdate
    fill_in "Civil State", with: @reniec.civil_state
    fill_in "Degree", with: @reniec.degree
    fill_in "Departamento", with: @reniec.departamento
    fill_in "Dni", with: @reniec.dni
    fill_in "Dsitrito", with: @reniec.dsitrito
    fill_in "Due Date", with: @reniec.due_date
    fill_in "Emission Date", with: @reniec.emission_date
    fill_in "Father Name", with: @reniec.father_name
    fill_in "Genre", with: @reniec.genre
    fill_in "Height", with: @reniec.height
    fill_in "Last Name", with: @reniec.last_name
    fill_in "Mother Name", with: @reniec.mother_name
    fill_in "Name", with: @reniec.name
    fill_in "Provincia", with: @reniec.provincia
    fill_in "Register", with: @reniec.register
    fill_in "Restriction", with: @reniec.restriction
    fill_in "Second Last Name", with: @reniec.second_last_name
    click_on "Create Reniec"

    assert_text "Reniec was successfully created"
    click_on "Back"
  end

  test "updating a Reniec" do
    visit reniecs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @reniec.address
    fill_in "Birth Departamento", with: @reniec.birth_departamento
    fill_in "Birth Distrito", with: @reniec.birth_distrito
    fill_in "Birth Provincia", with: @reniec.birth_provincia
    fill_in "Birthdate", with: @reniec.birthdate
    fill_in "Civil State", with: @reniec.civil_state
    fill_in "Degree", with: @reniec.degree
    fill_in "Departamento", with: @reniec.departamento
    fill_in "Dni", with: @reniec.dni
    fill_in "Dsitrito", with: @reniec.dsitrito
    fill_in "Due Date", with: @reniec.due_date
    fill_in "Emission Date", with: @reniec.emission_date
    fill_in "Father Name", with: @reniec.father_name
    fill_in "Genre", with: @reniec.genre
    fill_in "Height", with: @reniec.height
    fill_in "Last Name", with: @reniec.last_name
    fill_in "Mother Name", with: @reniec.mother_name
    fill_in "Name", with: @reniec.name
    fill_in "Provincia", with: @reniec.provincia
    fill_in "Register", with: @reniec.register
    fill_in "Restriction", with: @reniec.restriction
    fill_in "Second Last Name", with: @reniec.second_last_name
    click_on "Update Reniec"

    assert_text "Reniec was successfully updated"
    click_on "Back"
  end

  test "destroying a Reniec" do
    visit reniecs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reniec was successfully destroyed"
  end
end
