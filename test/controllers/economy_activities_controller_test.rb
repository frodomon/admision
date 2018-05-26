require 'test_helper'

class EconomyActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @economy_activity = economy_activities(:one)
  end

  test "should get index" do
    get economy_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_economy_activity_url
    assert_response :success
  end

  test "should create economy_activity" do
    assert_difference('EconomyActivity.count') do
      post economy_activities_url, params: { economy_activity: { name: @economy_activity.name } }
    end

    assert_redirected_to economy_activity_url(EconomyActivity.last)
  end

  test "should show economy_activity" do
    get economy_activity_url(@economy_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_economy_activity_url(@economy_activity)
    assert_response :success
  end

  test "should update economy_activity" do
    patch economy_activity_url(@economy_activity), params: { economy_activity: { name: @economy_activity.name } }
    assert_redirected_to economy_activity_url(@economy_activity)
  end

  test "should destroy economy_activity" do
    assert_difference('EconomyActivity.count', -1) do
      delete economy_activity_url(@economy_activity)
    end

    assert_redirected_to economy_activities_url
  end
end
