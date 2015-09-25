require 'test_helper'

class VicaragesControllerTest < ActionController::TestCase
  setup do
    @vicarage = vicarages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vicarages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vicarage" do
    assert_difference('Vicarage.count') do
      post :create, vicarage: { Name: @vicarage.Name, managers_id: @vicarage.managers_id }
    end

    assert_redirected_to vicarage_path(assigns(:vicarage))
  end

  test "should show vicarage" do
    get :show, id: @vicarage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vicarage
    assert_response :success
  end

  test "should update vicarage" do
    patch :update, id: @vicarage, vicarage: { Name: @vicarage.Name, managers_id: @vicarage.managers_id }
    assert_redirected_to vicarage_path(assigns(:vicarage))
  end

  test "should destroy vicarage" do
    assert_difference('Vicarage.count', -1) do
      delete :destroy, id: @vicarage
    end

    assert_redirected_to vicarages_path
  end
end
