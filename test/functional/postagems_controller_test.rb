require 'test_helper'

class PostagensControllerTest < ActionController::TestCase
  setup do
    @postagem = postagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postagem" do
    assert_difference('Postagem.count') do
      post :create, postagem: { conteudo: @postagem.conteudo, status: @postagem.status, titulo: @postagem.titulo }
    end

    assert_redirected_to postagem_path(assigns(:postagem))
  end

  test "should show postagem" do
    get :show, id: @postagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postagem
    assert_response :success
  end

  test "should update postagem" do
    put :update, id: @postagem, postagem: { conteudo: @postagem.conteudo, status: @postagem.status, titulo: @postagem.titulo }
    assert_redirected_to postagem_path(assigns(:postagem))
  end

  test "should destroy postagem" do
    assert_difference('Postagem.count', -1) do
      delete :destroy, id: @postagem
    end

    assert_redirected_to postagens_path
  end
end
