require 'test_helper'

class CapitalBuildUpsControllerTest < ActionController::TestCase
  setup do
    @capital_build_up = capital_build_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capital_build_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capital_build_up" do
    assert_difference('CapitalBuildUp.count') do
      post :create, capital_build_up: { initialPayment: @capital_build_up.initialPayment, memberId: @capital_build_up.memberId, memberSince: @capital_build_up.memberSince, membershipType: @capital_build_up.membershipType, paidSharesPercentage: @capital_build_up.paidSharesPercentage, remarks: @capital_build_up.remarks, status: @capital_build_up.status, subscribedShares: @capital_build_up.subscribedShares, termsOfPayment: @capital_build_up.termsOfPayment, totalAmountShares: @capital_build_up.totalAmountShares, totalPaidAmount: @capital_build_up.totalPaidAmount }
    end

    assert_redirected_to capital_build_up_path(assigns(:capital_build_up))
  end

  test "should show capital_build_up" do
    get :show, id: @capital_build_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capital_build_up
    assert_response :success
  end

  test "should update capital_build_up" do
    patch :update, id: @capital_build_up, capital_build_up: { initialPayment: @capital_build_up.initialPayment, memberId: @capital_build_up.memberId, memberSince: @capital_build_up.memberSince, membershipType: @capital_build_up.membershipType, paidSharesPercentage: @capital_build_up.paidSharesPercentage, remarks: @capital_build_up.remarks, status: @capital_build_up.status, subscribedShares: @capital_build_up.subscribedShares, termsOfPayment: @capital_build_up.termsOfPayment, totalAmountShares: @capital_build_up.totalAmountShares, totalPaidAmount: @capital_build_up.totalPaidAmount }
    assert_redirected_to capital_build_up_path(assigns(:capital_build_up))
  end

  test "should destroy capital_build_up" do
    assert_difference('CapitalBuildUp.count', -1) do
      delete :destroy, id: @capital_build_up
    end

    assert_redirected_to capital_build_ups_path
  end
end
