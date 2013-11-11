require 'test_helper'

class CampignsControllerTest < ActionController::TestCase
  setup do
    @campign = campigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campign" do
    assert_difference('Campign.count') do
      post :create, campign: {  }
    end

    assert_redirected_to campign_path(assigns(:campign))
  end

  test "should show campign" do
    get :show, id: @campign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campign
    assert_response :success
  end

  test "should update campign" do
    patch :update, id: @campign, campign: {  }
    assert_redirected_to campign_path(assigns(:campign))
  end

  test "should destroy campign" do
    assert_difference('Campign.count', -1) do
      delete :destroy, id: @campign
    end

    assert_redirected_to campigns_path
  end
end
