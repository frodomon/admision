require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { access: @request.access, address: @request.address, alianza_code: @request.alianza_code, alianza_id: @request.alianza_id, apartment: @request.apartment, birthday: @request.birthday, civil_state: @request.civil_state, company: @request.company, dni: @request.dni, economy_activity_id: @request.economy_activity_id, economy_sector_id: @request.economy_sector_id, email: @request.email, genre: @request.genre, job: @request.job, job_address: @request.job_address, job_number: @request.job_number, job_telephone: @request.job_telephone, job_title: @request.job_title, job_type_id: @request.job_type_id, job_urbanization: @request.job_urbanization, last_name: @request.last_name, mobile: @request.mobile, name: @request.name, number: @request.number, patron_doi: @request.patron_doi, patron_last_name: @request.patron_last_name, patron_mobile: @request.patron_mobile, patron_second_last_name: @request.patron_second_last_name, profession: @request.profession, property_house: @request.property_house, ruc: @request.ruc, salary_id: @request.salary_id, second_last_name: @request.second_last_name, spouse_birthday: @request.spouse_birthday, spouse_doi: @request.spouse_doi, spouse_economy_sector: @request.spouse_economy_sector, spouse_last_name: @request.spouse_last_name, spouse_name: @request.spouse_name, spouse_ocupation: @request.spouse_ocupation, spouse_profession: @request.spouse_profession, spouse_second_last_name: @request.spouse_second_last_name, status: @request.status, telephone: @request.telephone, urbanization: @request.urbanization, work_years: @request.work_years } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { access: @request.access, address: @request.address, alianza_code: @request.alianza_code, alianza_id: @request.alianza_id, apartment: @request.apartment, birthday: @request.birthday, civil_state: @request.civil_state, company: @request.company, dni: @request.dni, economy_activity_id: @request.economy_activity_id, economy_sector_id: @request.economy_sector_id, email: @request.email, genre: @request.genre, job: @request.job, job_address: @request.job_address, job_number: @request.job_number, job_telephone: @request.job_telephone, job_title: @request.job_title, job_type_id: @request.job_type_id, job_urbanization: @request.job_urbanization, last_name: @request.last_name, mobile: @request.mobile, name: @request.name, number: @request.number, patron_doi: @request.patron_doi, patron_last_name: @request.patron_last_name, patron_mobile: @request.patron_mobile, patron_second_last_name: @request.patron_second_last_name, profession: @request.profession, property_house: @request.property_house, ruc: @request.ruc, salary_id: @request.salary_id, second_last_name: @request.second_last_name, spouse_birthday: @request.spouse_birthday, spouse_doi: @request.spouse_doi, spouse_economy_sector: @request.spouse_economy_sector, spouse_last_name: @request.spouse_last_name, spouse_name: @request.spouse_name, spouse_ocupation: @request.spouse_ocupation, spouse_profession: @request.spouse_profession, spouse_second_last_name: @request.spouse_second_last_name, status: @request.status, telephone: @request.telephone, urbanization: @request.urbanization, work_years: @request.work_years } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
