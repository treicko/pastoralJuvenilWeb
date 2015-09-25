require 'test_helper'

class GroupYouthsControllerTest < ActionController::TestCase
  setup do
    @group_youth = group_youths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_youths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_youth" do
    assert_difference('GroupYouth.count') do
      post :create, group_youth: { Name: @group_youth.Name, creationDate: @group_youth.creationDate, gatheringPlace: @group_youth.gatheringPlace, managers_id: @group_youth.managers_id, parish_id: @group_youth.parish_id, schedules: @group_youth.schedules }
    end

    assert_redirected_to group_youth_path(assigns(:group_youth))
  end

  test "should show group_youth" do
    get :show, id: @group_youth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_youth
    assert_response :success
  end

  test "should update group_youth" do
    patch :update, id: @group_youth, group_youth: { Name: @group_youth.Name, creationDate: @group_youth.creationDate, gatheringPlace: @group_youth.gatheringPlace, managers_id: @group_youth.managers_id, parish_id: @group_youth.parish_id, schedules: @group_youth.schedules }
    assert_redirected_to group_youth_path(assigns(:group_youth))
  end

  test "should destroy group_youth" do
    assert_difference('GroupYouth.count', -1) do
      delete :destroy, id: @group_youth
    end

    assert_redirected_to group_youths_path
  end
end
