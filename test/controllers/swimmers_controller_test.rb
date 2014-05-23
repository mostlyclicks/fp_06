require 'test_helper'

class SwimmersControllerTest < ActionController::TestCase
  setup do
    @swimmer = swimmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swimmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swimmer" do
    assert_difference('Swimmer.count') do
      post :create, swimmer: { about: @swimmer.about, name: @swimmer.name }
    end

    assert_redirected_to swimmer_path(assigns(:swimmer))
  end

  test "should show swimmer" do
    get :show, id: @swimmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swimmer
    assert_response :success
  end

  test "should update swimmer" do
    patch :update, id: @swimmer, swimmer: { about: @swimmer.about, name: @swimmer.name }
    assert_redirected_to swimmer_path(assigns(:swimmer))
  end

  test "should destroy swimmer" do
    assert_difference('Swimmer.count', -1) do
      delete :destroy, id: @swimmer
    end

    assert_redirected_to swimmers_path
  end
end
