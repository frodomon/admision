require 'test_helper'

class EconomySectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @economy_sector = economy_sectors(:one)
  end

  test "should get index" do
    get economy_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_economy_sector_url
    assert_response :success
  end

  test "should create economy_sector" do
    assert_difference('EconomySector.count') do
      post economy_sectors_url, params: { economy_sector: { name: @economy_sector.name } }
    end

    assert_redirected_to economy_sector_url(EconomySector.last)
  end

  test "should show economy_sector" do
    get economy_sector_url(@economy_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_economy_sector_url(@economy_sector)
    assert_response :success
  end

  test "should update economy_sector" do
    patch economy_sector_url(@economy_sector), params: { economy_sector: { name: @economy_sector.name } }
    assert_redirected_to economy_sector_url(@economy_sector)
  end

  test "should destroy economy_sector" do
    assert_difference('EconomySector.count', -1) do
      delete economy_sector_url(@economy_sector)
    end

    assert_redirected_to economy_sectors_url
  end
end
