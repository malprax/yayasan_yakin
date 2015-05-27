require 'test_helper'

class DonatursControllerTest < ActionController::TestCase
  setup do
    @donatur = donaturs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donaturs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donatur" do
    assert_difference('Donatur.count') do
      post :create, donatur: { name: @donatur.name }
    end

    assert_redirected_to donatur_path(assigns(:donatur))
  end

  test "should show donatur" do
    get :show, id: @donatur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donatur
    assert_response :success
  end

  test "should update donatur" do
    patch :update, id: @donatur, donatur: { name: @donatur.name }
    assert_redirected_to donatur_path(assigns(:donatur))
  end

  test "should destroy donatur" do
    assert_difference('Donatur.count', -1) do
      delete :destroy, id: @donatur
    end

    assert_redirected_to donaturs_path
  end
end
