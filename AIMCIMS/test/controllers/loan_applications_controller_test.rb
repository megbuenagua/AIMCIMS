require 'test_helper'

class LoanApplicationsControllerTest < ActionController::TestCase
  setup do
    @loan_application = loan_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_application" do
    assert_difference('LoanApplication.count') do
      post :create, loan_application: { applicationStatus: @loan_application.applicationStatus, dateApproved: @loan_application.dateApproved, dateFiled: @loan_application.dateFiled, dateReleased: @loan_application.dateReleased, loanId: @loan_application.loanId, loanTypeId: @loan_application.loanTypeId, memberId: @loan_application.memberId, nameOfSpouse: @loan_application.nameOfSpouse, occupationOfSpouse: @loan_application.occupationOfSpouse, otherResources: @loan_application.otherResources, realProperties: @loan_application.realProperties, remarks: @loan_application.remarks, totalFamilyIncome: @loan_application.totalFamilyIncome }
    end

    assert_redirected_to loan_application_path(assigns(:loan_application))
  end

  test "should show loan_application" do
    get :show, id: @loan_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_application
    assert_response :success
  end

  test "should update loan_application" do
    patch :update, id: @loan_application, loan_application: { applicationStatus: @loan_application.applicationStatus, dateApproved: @loan_application.dateApproved, dateFiled: @loan_application.dateFiled, dateReleased: @loan_application.dateReleased, loanId: @loan_application.loanId, loanTypeId: @loan_application.loanTypeId, memberId: @loan_application.memberId, nameOfSpouse: @loan_application.nameOfSpouse, occupationOfSpouse: @loan_application.occupationOfSpouse, otherResources: @loan_application.otherResources, realProperties: @loan_application.realProperties, remarks: @loan_application.remarks, totalFamilyIncome: @loan_application.totalFamilyIncome }
    assert_redirected_to loan_application_path(assigns(:loan_application))
  end

  test "should destroy loan_application" do
    assert_difference('LoanApplication.count', -1) do
      delete :destroy, id: @loan_application
    end

    assert_redirected_to loan_applications_path
  end
end
