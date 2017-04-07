require 'test_helper'

class DayRoadListsControllerTest < ActionController::TestCase
  setup do
    @day_road_list = day_road_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_road_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_road_list" do
    assert_difference('DayRoadList.count') do
      post :create, day_road_list: { day: @day_road_list.day, fuel: @day_road_list.fuel, station: @day_road_list.station }
    end

    assert_redirected_to day_road_list_path(assigns(:day_road_list))
  end

  test "should show day_road_list" do
    get :show, id: @day_road_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_road_list
    assert_response :success
  end

  test "should update day_road_list" do
    patch :update, id: @day_road_list, day_road_list: { day: @day_road_list.day, fuel: @day_road_list.fuel, station: @day_road_list.station }
    assert_redirected_to day_road_list_path(assigns(:day_road_list))
  end

  test "should destroy day_road_list" do
    assert_difference('DayRoadList.count', -1) do
      delete :destroy, id: @day_road_list
    end

    assert_redirected_to day_road_lists_path
  end
end
