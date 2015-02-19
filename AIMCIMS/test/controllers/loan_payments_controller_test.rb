require 'test_helper'

class LoanPaymentsControllerTest < ActionController::TestCase
  setup do
    @loan_payment = loan_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_payment" do
    assert_difference('LoanPayment.count') do
      post :create, loan_payment: { amount: @loan_payment.amount, loanId: @loan_payment.loanId, memberId: @loan_payment.memberId, orNumber: @loan_payment.orNumber, paymentDate: @loan_payment.paymentDate, remarks: @loan_payment.remarks, staffId: @loan_payment.staffId }
    end

    assert_redirected_to loan_payment_path(assigns(:loan_payment))
  end

  test "should show loan_payment" do
    get :show, id: @loan_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_payment
    assert_response :success
  end

  test "should update loan_payment" do
    patch :update, id: @loan_payment, loan_payment: { amount: @loan_payment.amount, loanId: @loan_payment.loanId, memberId: @loan_payment.memberId, orNumber: @loan_payment.orNumber, paymentDate: @loan_payment.paymentDate, remarks: @loan_payment.remarks, staffId: @loan_payment.staffId }
    assert_redirected_to loan_payment_path(assigns(:loan_payment))
  end

  test "should destroy loan_payment" do
    assert_difference('LoanPayment.count', -1) do
      delete :destroy, id: @loan_payment
    end

    assert_redirected_to loan_payments_path
  end
end
