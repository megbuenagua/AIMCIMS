require 'test_helper'

class CbuContributionsControllerTest < ActionController::TestCase
  setup do
    @cbu_contribution = cbu_contributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cbu_contributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cbu_contribution" do
    assert_difference('CbuContribution.count') do
      post :create, cbu_contribution: { OrNumber: @cbu_contribution.OrNumber, amount: @cbu_contribution.amount, date: @cbu_contribution.date, memberID: @cbu_contribution.memberID, remarks: @cbu_contribution.remarks, staffId: @cbu_contribution.staffId }
    end

    assert_redirected_to cbu_contribution_path(assigns(:cbu_contribution))
  end

  test "should show cbu_contribution" do
    get :show, id: @cbu_contribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cbu_contribution
    assert_response :success
  end

  test "should update cbu_contribution" do
    patch :update, id: @cbu_contribution, cbu_contribution: { OrNumber: @cbu_contribution.OrNumber, amount: @cbu_contribution.amount, date: @cbu_contribution.date, memberID: @cbu_contribution.memberID, remarks: @cbu_contribution.remarks, staffId: @cbu_contribution.staffId }
    assert_redirected_to cbu_contribution_path(assigns(:cbu_contribution))
  end

  test "should destroy cbu_contribution" do
    assert_difference('CbuContribution.count', -1) do
      delete :destroy, id: @cbu_contribution
    end

    assert_redirected_to cbu_contributions_path
  end
end
