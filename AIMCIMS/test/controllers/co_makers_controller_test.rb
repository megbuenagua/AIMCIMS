require 'test_helper'

class CoMakersControllerTest < ActionController::TestCase
  setup do
    @co_maker = co_makers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:co_makers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create co_maker" do
    assert_difference('CoMaker.count') do
      post :create, co_maker: { address: @co_maker.address, birthdate: @co_maker.birthdate, coMakerId: @co_maker.coMakerId, coMakerfname: @co_maker.coMakerfname, coMakerlname: @co_maker.coMakerlname, coMakermname: @co_maker.coMakermname, contactNumber: @co_maker.contactNumber, employer: @co_maker.employer, employerAddress: @co_maker.employerAddress, employerContactNumber: @co_maker.employerContactNumber, relationship: @co_maker.relationship, spouse: @co_maker.spouse }
    end

    assert_redirected_to co_maker_path(assigns(:co_maker))
  end

  test "should show co_maker" do
    get :show, id: @co_maker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @co_maker
    assert_response :success
  end

  test "should update co_maker" do
    patch :update, id: @co_maker, co_maker: { address: @co_maker.address, birthdate: @co_maker.birthdate, coMakerId: @co_maker.coMakerId, coMakerfname: @co_maker.coMakerfname, coMakerlname: @co_maker.coMakerlname, coMakermname: @co_maker.coMakermname, contactNumber: @co_maker.contactNumber, employer: @co_maker.employer, employerAddress: @co_maker.employerAddress, employerContactNumber: @co_maker.employerContactNumber, relationship: @co_maker.relationship, spouse: @co_maker.spouse }
    assert_redirected_to co_maker_path(assigns(:co_maker))
  end

  test "should destroy co_maker" do
    assert_difference('CoMaker.count', -1) do
      delete :destroy, id: @co_maker
    end

    assert_redirected_to co_makers_path
  end
end
