require 'test_helper'

class ProSantesControllerTest < ActionController::TestCase
  setup do
    @pro_sante = pro_santes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pro_santes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pro_sante" do
    assert_difference('ProSante.count') do
      post :create, pro_sante: { adresse_id: @pro_sante.adresse_id, nom: @pro_sante.nom, prenom: @pro_sante.prenom, specialte: @pro_sante.specialte }
    end

    assert_redirected_to pro_sante_path(assigns(:pro_sante))
  end

  test "should show pro_sante" do
    get :show, id: @pro_sante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pro_sante
    assert_response :success
  end

  test "should update pro_sante" do
    patch :update, id: @pro_sante, pro_sante: { adresse_id: @pro_sante.adresse_id, nom: @pro_sante.nom, prenom: @pro_sante.prenom, specialte: @pro_sante.specialte }
    assert_redirected_to pro_sante_path(assigns(:pro_sante))
  end

  test "should destroy pro_sante" do
    assert_difference('ProSante.count', -1) do
      delete :destroy, id: @pro_sante
    end

    assert_redirected_to pro_santes_path
  end
end
