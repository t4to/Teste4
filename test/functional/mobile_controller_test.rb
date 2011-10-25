require 'test_helper'

class MobileControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get lista_area" do
    get :lista_area
    assert_response :success
  end

  test "should get lista_categoria" do
    get :lista_categoria
    assert_response :success
  end

  test "should get lista_perfil" do
    get :lista_perfil
    assert_response :success
  end

  test "should get twitter" do
    get :twitter
    assert_response :success
  end

end
