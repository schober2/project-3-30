require 'test_helper'

class RealestatesControllerTest < ActionController::TestCase
  setup do
    @realestate = realestates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realestates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realestate" do
    assert_difference('Realestate.count') do
      post :create, realestate: { address: @realestate.address, bath: @realestate.bath, bed: @realestate.bed, constructed: @realestate.constructed, forsale: @realestate.forsale, price: @realestate.price, sqfootage: @realestate.sqfootage }
    end

    assert_redirected_to realestate_path(assigns(:realestate))
  end

  test "should show realestate" do
    get :show, id: @realestate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realestate
    assert_response :success
  end

  test "should update realestate" do
    patch :update, id: @realestate, realestate: { address: @realestate.address, bath: @realestate.bath, bed: @realestate.bed, constructed: @realestate.constructed, forsale: @realestate.forsale, price: @realestate.price, sqfootage: @realestate.sqfootage }
    assert_redirected_to realestate_path(assigns(:realestate))
  end

  test "should destroy realestate" do
    assert_difference('Realestate.count', -1) do
      delete :destroy, id: @realestate
    end

    assert_redirected_to realestates_path
  end
end
