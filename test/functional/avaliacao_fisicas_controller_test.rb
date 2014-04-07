require 'test_helper'

class AvaliacaoFisicasControllerTest < ActionController::TestCase
  setup do
    @avaliacao_fisica = avaliacao_fisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaliacao_fisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaliacao_fisica" do
    assert_difference('AvaliacaoFisica.count') do
      post :create, avaliacao_fisica: {  }
    end

    assert_redirected_to avaliacao_fisica_path(assigns(:avaliacao_fisica))
  end

  test "should show avaliacao_fisica" do
    get :show, id: @avaliacao_fisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avaliacao_fisica
    assert_response :success
  end

  test "should update avaliacao_fisica" do
    put :update, id: @avaliacao_fisica, avaliacao_fisica: {  }
    assert_redirected_to avaliacao_fisica_path(assigns(:avaliacao_fisica))
  end

  test "should destroy avaliacao_fisica" do
    assert_difference('AvaliacaoFisica.count', -1) do
      delete :destroy, id: @avaliacao_fisica
    end

    assert_redirected_to avaliacao_fisicas_path
  end
end
