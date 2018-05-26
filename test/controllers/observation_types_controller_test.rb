require 'test_helper'

class ObservationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observation_type = observation_types(:one)
  end

  test "should get index" do
    get observation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_observation_type_url
    assert_response :success
  end

  test "should create observation_type" do
    assert_difference('ObservationType.count') do
      post observation_types_url, params: { observation_type: { nombre: @observation_type.nombre } }
    end

    assert_redirected_to observation_type_url(ObservationType.last)
  end

  test "should show observation_type" do
    get observation_type_url(@observation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_observation_type_url(@observation_type)
    assert_response :success
  end

  test "should update observation_type" do
    patch observation_type_url(@observation_type), params: { observation_type: { nombre: @observation_type.nombre } }
    assert_redirected_to observation_type_url(@observation_type)
  end

  test "should destroy observation_type" do
    assert_difference('ObservationType.count', -1) do
      delete observation_type_url(@observation_type)
    end

    assert_redirected_to observation_types_url
  end
end
