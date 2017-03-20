require 'test_helper'

class RoadListControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get past" do
    get :past
    assert_response :success
  end

end
