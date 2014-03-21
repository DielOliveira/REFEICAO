require 'test_helper'

class RefeicaosControllerTest < ActionController::TestCase
  setup do
    @refeicao = refeicaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refeicaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refeicao" do
    assert_difference('Refeicao.count') do
      post :create, refeicao: { DATE_Refeicao: @refeicao.DATE_Refeicao, DESC_Acompanhamento: @refeicao.DESC_Acompanhamento, DESC_Observacao: @refeicao.DESC_Observacao, DESC_Refeicao: @refeicao.DESC_Refeicao, TIPO_Refeicao: @refeicao.TIPO_Refeicao, VALOR_Acompanhamento: @refeicao.VALOR_Acompanhamento, VALOR_Refeicao: @refeicao.VALOR_Refeicao }
    end

    assert_redirected_to refeicao_path(assigns(:refeicao))
  end

  test "should show refeicao" do
    get :show, id: @refeicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refeicao
    assert_response :success
  end

  test "should update refeicao" do
    patch :update, id: @refeicao, refeicao: { DATE_Refeicao: @refeicao.DATE_Refeicao, DESC_Acompanhamento: @refeicao.DESC_Acompanhamento, DESC_Observacao: @refeicao.DESC_Observacao, DESC_Refeicao: @refeicao.DESC_Refeicao, TIPO_Refeicao: @refeicao.TIPO_Refeicao, VALOR_Acompanhamento: @refeicao.VALOR_Acompanhamento, VALOR_Refeicao: @refeicao.VALOR_Refeicao }
    assert_redirected_to refeicao_path(assigns(:refeicao))
  end

  test "should destroy refeicao" do
    assert_difference('Refeicao.count', -1) do
      delete :destroy, id: @refeicao
    end

    assert_redirected_to refeicaos_path
  end
end
