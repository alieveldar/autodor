require 'test_helper'

class CartridgeSuppliesControllerTest < ActionController::TestCase
  setup do
    @cartridge_supply = cartridge_supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartridge_supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartridge_supply" do
    assert_difference('CartridgeSupply.count') do
      post :create, cartridge_supply: { count: @cartridge_supply.count, date: @cartridge_supply.date, model: @cartridge_supply.model, service: @cartridge_supply.service, state: @cartridge_supply.state }
    end

    assert_redirected_to cartridge_supply_path(assigns(:cartridge_supply))
  end

  test "should show cartridge_supply" do
    get :show, id: @cartridge_supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartridge_supply
    assert_response :success
  end

  test "should update cartridge_supply" do
    patch :update, id: @cartridge_supply, cartridge_supply: { count: @cartridge_supply.count, date: @cartridge_supply.date, model: @cartridge_supply.model, service: @cartridge_supply.service, state: @cartridge_supply.state }
    assert_redirected_to cartridge_supply_path(assigns(:cartridge_supply))
  end

  test "should destroy cartridge_supply" do
    assert_difference('CartridgeSupply.count', -1) do
      delete :destroy, id: @cartridge_supply
    end

    assert_redirected_to cartridge_supplies_path
  end
end
