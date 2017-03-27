require 'test_helper'

class RoadListControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get print" do
    get :print
    assert_response :success
  end

  test "should get download" do
    get :download
    assert_response :success
  end

end
