require 'test_helper'

class LoginAccountsControllerTest < ActionController::TestCase
  setup do
    @login_account = login_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_account" do
    assert_difference('LoginAccount.count') do
      post :create, login_account: { loginId: @login_account.loginId, password: @login_account.password, username: @login_account.username }
    end

    assert_redirected_to login_account_path(assigns(:login_account))
  end

  test "should show login_account" do
    get :show, id: @login_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_account
    assert_response :success
  end

  test "should update login_account" do
    patch :update, id: @login_account, login_account: { loginId: @login_account.loginId, password: @login_account.password, username: @login_account.username }
    assert_redirected_to login_account_path(assigns(:login_account))
  end

  test "should destroy login_account" do
    assert_difference('LoginAccount.count', -1) do
      delete :destroy, id: @login_account
    end

    assert_redirected_to login_accounts_path
  end
end
