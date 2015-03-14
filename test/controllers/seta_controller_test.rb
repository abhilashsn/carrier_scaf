require 'test_helper'

class SetaControllerTest < ActionController::TestCase
  setup do
    @setum = seta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setum" do
    assert_difference('Setum.count') do
      post :create, setum: { description: @setum.description, display_order: @setum.display_order, is_active: @setum.is_active, name: @setum.name, time_limit: @setum.time_limit }
    end

    assert_redirected_to setum_path(assigns(:setum))
  end

  test "should show setum" do
    get :show, id: @setum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setum
    assert_response :success
  end

  test "should update setum" do
    patch :update, id: @setum, setum: { description: @setum.description, display_order: @setum.display_order, is_active: @setum.is_active, name: @setum.name, time_limit: @setum.time_limit }
    assert_redirected_to setum_path(assigns(:setum))
  end

  test "should destroy setum" do
    assert_difference('Setum.count', -1) do
      delete :destroy, id: @setum
    end

    assert_redirected_to seta_path
  end
end
