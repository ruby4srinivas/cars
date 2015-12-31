require 'test_helper'

class CardetailsControllerTest < ActionController::TestCase
  setup do
    @cardetail = cardetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cardetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cardetail" do
    assert_difference('Cardetail.count') do
      post :create, cardetail: { image: @cardetail.image, make_car: @cardetail.make_car, make_year: @cardetail.make_year, model: @cardetail.model, price: @cardetail.price, price: @cardetail.price }
    end

    assert_redirected_to cardetail_path(assigns(:cardetail))
  end

  test "should show cardetail" do
    get :show, id: @cardetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cardetail
    assert_response :success
  end

  test "should update cardetail" do
    patch :update, id: @cardetail, cardetail: { image: @cardetail.image, make_car: @cardetail.make_car, make_year: @cardetail.make_year, model: @cardetail.model, price: @cardetail.price, price: @cardetail.price }
    assert_redirected_to cardetail_path(assigns(:cardetail))
  end

  test "should destroy cardetail" do
    assert_difference('Cardetail.count', -1) do
      delete :destroy, id: @cardetail
    end

    assert_redirected_to cardetails_path
  end
end
