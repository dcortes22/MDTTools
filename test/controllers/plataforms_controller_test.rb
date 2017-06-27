require 'test_helper'

class PlataformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plataform = plataforms(:one)
  end

  test "should get index" do
    get plataforms_url
    assert_response :success
  end

  test "should get new" do
    get new_plataform_url
    assert_response :success
  end

  test "should create plataform" do
    assert_difference('Plataform.count') do
      post plataforms_url, params: { plataform: { name: @plataform.name } }
    end

    assert_redirected_to plataform_url(Plataform.last)
  end

  test "should show plataform" do
    get plataform_url(@plataform)
    assert_response :success
  end

  test "should get edit" do
    get edit_plataform_url(@plataform)
    assert_response :success
  end

  test "should update plataform" do
    patch plataform_url(@plataform), params: { plataform: { name: @plataform.name } }
    assert_redirected_to plataform_url(@plataform)
  end

  test "should destroy plataform" do
    assert_difference('Plataform.count', -1) do
      delete plataform_url(@plataform)
    end

    assert_redirected_to plataforms_url
  end
end
