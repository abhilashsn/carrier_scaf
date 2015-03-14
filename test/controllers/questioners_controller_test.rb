require 'test_helper'

class QuestionersControllerTest < ActionController::TestCase
  setup do
    @questioner = questioners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questioners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questioner" do
    assert_difference('Questioner.count') do
      post :create, questioner: { description: @questioner.description, is_active: @questioner.is_active, name: @questioner.name }
    end

    assert_redirected_to questioner_path(assigns(:questioner))
  end

  test "should show questioner" do
    get :show, id: @questioner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questioner
    assert_response :success
  end

  test "should update questioner" do
    patch :update, id: @questioner, questioner: { description: @questioner.description, is_active: @questioner.is_active, name: @questioner.name }
    assert_redirected_to questioner_path(assigns(:questioner))
  end

  test "should destroy questioner" do
    assert_difference('Questioner.count', -1) do
      delete :destroy, id: @questioner
    end

    assert_redirected_to questioners_path
  end
end
