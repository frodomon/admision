require 'test_helper'

class AlianzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alianza = alianzas(:one)
  end

  test "should get index" do
    get alianzas_url
    assert_response :success
  end

  test "should get new" do
    get new_alianza_url
    assert_response :success
  end

  test "should create alianza" do
    assert_difference('Alianza.count') do
      post alianzas_url, params: { alianza: { nombre: @alianza.nombre } }
    end

    assert_redirected_to alianza_url(Alianza.last)
  end

  test "should show alianza" do
    get alianza_url(@alianza)
    assert_response :success
  end

  test "should get edit" do
    get edit_alianza_url(@alianza)
    assert_response :success
  end

  test "should update alianza" do
    patch alianza_url(@alianza), params: { alianza: { nombre: @alianza.nombre } }
    assert_redirected_to alianza_url(@alianza)
  end

  test "should destroy alianza" do
    assert_difference('Alianza.count', -1) do
      delete alianza_url(@alianza)
    end

    assert_redirected_to alianzas_url
  end
end
