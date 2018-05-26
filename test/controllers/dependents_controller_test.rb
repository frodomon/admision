require 'test_helper'

class DependentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependent = dependents(:one)
  end

  test "should get index" do
    get dependents_url
    assert_response :success
  end

  test "should get new" do
    get new_dependent_url
    assert_response :success
  end

  test "should create dependent" do
    assert_difference('Dependent.count') do
      post dependents_url, params: { dependent: { birthdate: @dependent.birthdate, last_name: @dependent.last_name, name: @dependent.name, relationship: @dependent.relationship, request_id: @dependent.request_id, second_last_name: @dependent.second_last_name } }
    end

    assert_redirected_to dependent_url(Dependent.last)
  end

  test "should show dependent" do
    get dependent_url(@dependent)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependent_url(@dependent)
    assert_response :success
  end

  test "should update dependent" do
    patch dependent_url(@dependent), params: { dependent: { birthdate: @dependent.birthdate, last_name: @dependent.last_name, name: @dependent.name, relationship: @dependent.relationship, request_id: @dependent.request_id, second_last_name: @dependent.second_last_name } }
    assert_redirected_to dependent_url(@dependent)
  end

  test "should destroy dependent" do
    assert_difference('Dependent.count', -1) do
      delete dependent_url(@dependent)
    end

    assert_redirected_to dependents_url
  end
end