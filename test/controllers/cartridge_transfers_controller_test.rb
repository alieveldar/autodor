require 'test_helper'

class CartridgeTransfersControllerTest < ActionController::TestCase
  setup do
    @cartridge_transfer = cartridge_transfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartridge_transfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartridge_transfer" do
    assert_difference('CartridgeTransfer.count') do
      post :create, cartridge_transfer: { count: @cartridge_transfer.count, date: @cartridge_transfer.date, department: @cartridge_transfer.department, model: @cartridge_transfer.model, person_in: @cartridge_transfer.person_in, person_out: @cartridge_transfer.person_out }
    end

    assert_redirected_to cartridge_transfer_path(assigns(:cartridge_transfer))
  end

  test "should show cartridge_transfer" do
    get :show, id: @cartridge_transfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartridge_transfer
    assert_response :success
  end

  test "should update cartridge_transfer" do
    patch :update, id: @cartridge_transfer, cartridge_transfer: { count: @cartridge_transfer.count, date: @cartridge_transfer.date, department: @cartridge_transfer.department, model: @cartridge_transfer.model, person_in: @cartridge_transfer.person_in, person_out: @cartridge_transfer.person_out }
    assert_redirected_to cartridge_transfer_path(assigns(:cartridge_transfer))
  end

  test "should destroy cartridge_transfer" do
    assert_difference('CartridgeTransfer.count', -1) do
      delete :destroy, id: @cartridge_transfer
    end

    assert_redirected_to cartridge_transfers_path
  end
end
