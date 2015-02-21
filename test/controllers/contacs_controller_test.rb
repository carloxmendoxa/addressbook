require 'test_helper'

class ContacsControllerTest < ActionController::TestCase
  setup do
    @contac = contacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contac" do
    assert_difference('Contac.count') do
      post :create, contac: { birthdate: @contac.birthdate, description: @contac.description, email: @contac.email, lastname: @contac.lastname, name: @contac.name, phone: @contac.phone, user_id: @contac.user_id }
    end

    assert_redirected_to contac_path(assigns(:contac))
  end

  test "should show contac" do
    get :show, id: @contac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contac
    assert_response :success
  end

  test "should update contac" do
    patch :update, id: @contac, contac: { birthdate: @contac.birthdate, description: @contac.description, email: @contac.email, lastname: @contac.lastname, name: @contac.name, phone: @contac.phone, user_id: @contac.user_id }
    assert_redirected_to contac_path(assigns(:contac))
  end

  test "should destroy contac" do
    assert_difference('Contac.count', -1) do
      delete :destroy, id: @contac
    end

    assert_redirected_to contacs_path
  end
end
