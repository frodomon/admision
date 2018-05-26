require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Access", with: @request.access
    fill_in "Address", with: @request.address
    fill_in "Alianza Code", with: @request.alianza_code
    fill_in "Alianza", with: @request.alianza_id
    fill_in "Apartment", with: @request.apartment
    fill_in "Birthday", with: @request.birthday
    fill_in "Civil State", with: @request.civil_state
    fill_in "Company", with: @request.company
    fill_in "Dni", with: @request.dni
    fill_in "Economy Activity", with: @request.economy_activity_id
    fill_in "Economy Sector", with: @request.economy_sector_id
    fill_in "Email", with: @request.email
    fill_in "Genre", with: @request.genre
    fill_in "Job", with: @request.job
    fill_in "Job Address", with: @request.job_address
    fill_in "Job Number", with: @request.job_number
    fill_in "Job Telephone", with: @request.job_telephone
    fill_in "Job Title", with: @request.job_title
    fill_in "Job Type", with: @request.job_type_id
    fill_in "Job Urbanization", with: @request.job_urbanization
    fill_in "Last Name", with: @request.last_name
    fill_in "Mobile", with: @request.mobile
    fill_in "Name", with: @request.name
    fill_in "Number", with: @request.number
    fill_in "Patron Doi", with: @request.patron_doi
    fill_in "Patron Last Name", with: @request.patron_last_name
    fill_in "Patron Mobile", with: @request.patron_mobile
    fill_in "Patron Second Last Name", with: @request.patron_second_last_name
    fill_in "Profession", with: @request.profession
    fill_in "Property House", with: @request.property_house
    fill_in "Ruc", with: @request.ruc
    fill_in "Salary", with: @request.salary_id
    fill_in "Second Last Name", with: @request.second_last_name
    fill_in "Spouse Birthday", with: @request.spouse_birthday
    fill_in "Spouse Doi", with: @request.spouse_doi
    fill_in "Spouse Economy Sector", with: @request.spouse_economy_sector
    fill_in "Spouse Last Name", with: @request.spouse_last_name
    fill_in "Spouse Name", with: @request.spouse_name
    fill_in "Spouse Ocupation", with: @request.spouse_ocupation
    fill_in "Spouse Profession", with: @request.spouse_profession
    fill_in "Spouse Second Last Name", with: @request.spouse_second_last_name
    fill_in "Status", with: @request.status
    fill_in "Telephone", with: @request.telephone
    fill_in "Urbanization", with: @request.urbanization
    fill_in "Work Years", with: @request.work_years
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Access", with: @request.access
    fill_in "Address", with: @request.address
    fill_in "Alianza Code", with: @request.alianza_code
    fill_in "Alianza", with: @request.alianza_id
    fill_in "Apartment", with: @request.apartment
    fill_in "Birthday", with: @request.birthday
    fill_in "Civil State", with: @request.civil_state
    fill_in "Company", with: @request.company
    fill_in "Dni", with: @request.dni
    fill_in "Economy Activity", with: @request.economy_activity_id
    fill_in "Economy Sector", with: @request.economy_sector_id
    fill_in "Email", with: @request.email
    fill_in "Genre", with: @request.genre
    fill_in "Job", with: @request.job
    fill_in "Job Address", with: @request.job_address
    fill_in "Job Number", with: @request.job_number
    fill_in "Job Telephone", with: @request.job_telephone
    fill_in "Job Title", with: @request.job_title
    fill_in "Job Type", with: @request.job_type_id
    fill_in "Job Urbanization", with: @request.job_urbanization
    fill_in "Last Name", with: @request.last_name
    fill_in "Mobile", with: @request.mobile
    fill_in "Name", with: @request.name
    fill_in "Number", with: @request.number
    fill_in "Patron Doi", with: @request.patron_doi
    fill_in "Patron Last Name", with: @request.patron_last_name
    fill_in "Patron Mobile", with: @request.patron_mobile
    fill_in "Patron Second Last Name", with: @request.patron_second_last_name
    fill_in "Profession", with: @request.profession
    fill_in "Property House", with: @request.property_house
    fill_in "Ruc", with: @request.ruc
    fill_in "Salary", with: @request.salary_id
    fill_in "Second Last Name", with: @request.second_last_name
    fill_in "Spouse Birthday", with: @request.spouse_birthday
    fill_in "Spouse Doi", with: @request.spouse_doi
    fill_in "Spouse Economy Sector", with: @request.spouse_economy_sector
    fill_in "Spouse Last Name", with: @request.spouse_last_name
    fill_in "Spouse Name", with: @request.spouse_name
    fill_in "Spouse Ocupation", with: @request.spouse_ocupation
    fill_in "Spouse Profession", with: @request.spouse_profession
    fill_in "Spouse Second Last Name", with: @request.spouse_second_last_name
    fill_in "Status", with: @request.status
    fill_in "Telephone", with: @request.telephone
    fill_in "Urbanization", with: @request.urbanization
    fill_in "Work Years", with: @request.work_years
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
