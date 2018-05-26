require 'test_helper'

class ReniecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reniec = reniecs(:one)
  end

  test "should get index" do
    get reniecs_url
    assert_response :success
  end

  test "should get new" do
    get new_reniec_url
    assert_response :success
  end

  test "should create reniec" do
    assert_difference('Reniec.count') do
      post reniecs_url, params: { reniec: { address: @reniec.address, birth_departamento: @reniec.birth_departamento, birth_distrito: @reniec.birth_distrito, birth_provincia: @reniec.birth_provincia, birthdate: @reniec.birthdate, civil_state: @reniec.civil_state, degree: @reniec.degree, departamento: @reniec.departamento, dni: @reniec.dni, dsitrito: @reniec.dsitrito, due_date: @reniec.due_date, emission_date: @reniec.emission_date, father_name: @reniec.father_name, genre: @reniec.genre, height: @reniec.height, last_name: @reniec.last_name, mother_name: @reniec.mother_name, name: @reniec.name, provincia: @reniec.provincia, register: @reniec.register, restriction: @reniec.restriction, second_last_name: @reniec.second_last_name } }
    end

    assert_redirected_to reniec_url(Reniec.last)
  end

  test "should show reniec" do
    get reniec_url(@reniec)
    assert_response :success
  end

  test "should get edit" do
    get edit_reniec_url(@reniec)
    assert_response :success
  end

  test "should update reniec" do
    patch reniec_url(@reniec), params: { reniec: { address: @reniec.address, birth_departamento: @reniec.birth_departamento, birth_distrito: @reniec.birth_distrito, birth_provincia: @reniec.birth_provincia, birthdate: @reniec.birthdate, civil_state: @reniec.civil_state, degree: @reniec.degree, departamento: @reniec.departamento, dni: @reniec.dni, dsitrito: @reniec.dsitrito, due_date: @reniec.due_date, emission_date: @reniec.emission_date, father_name: @reniec.father_name, genre: @reniec.genre, height: @reniec.height, last_name: @reniec.last_name, mother_name: @reniec.mother_name, name: @reniec.name, provincia: @reniec.provincia, register: @reniec.register, restriction: @reniec.restriction, second_last_name: @reniec.second_last_name } }
    assert_redirected_to reniec_url(@reniec)
  end

  test "should destroy reniec" do
    assert_difference('Reniec.count', -1) do
      delete reniec_url(@reniec)
    end

    assert_redirected_to reniecs_url
  end
end
