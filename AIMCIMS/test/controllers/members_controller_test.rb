require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { bankAccount: @member.bankAccount, birthdate: @member.birthdate, civilSatus: @member.civilSatus, dateApproved: @member.dateApproved, employer: @member.employer, employerNumber: @member.employerNumber, enrolledWithPostbank: @member.enrolledWithPostbank, firstname: @member.firstname, gender: @member.gender, homeNumber: @member.homeNumber, lastname: @member.lastname, memberId: @member.memberId, membershipType: @member.membershipType, middlename: @member.middlename, mobileNumber: @member.mobileNumber, notes: @member.notes, officeAddress: @member.officeAddress, officeEmail: @member.officeEmail, officeNumber: @member.officeNumber, permanentAddress: @member.permanentAddress, personalEmail: @member.personalEmail, position: @member.position, spouse: @member.spouse }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { bankAccount: @member.bankAccount, birthdate: @member.birthdate, civilSatus: @member.civilSatus, dateApproved: @member.dateApproved, employer: @member.employer, employerNumber: @member.employerNumber, enrolledWithPostbank: @member.enrolledWithPostbank, firstname: @member.firstname, gender: @member.gender, homeNumber: @member.homeNumber, lastname: @member.lastname, memberId: @member.memberId, membershipType: @member.membershipType, middlename: @member.middlename, mobileNumber: @member.mobileNumber, notes: @member.notes, officeAddress: @member.officeAddress, officeEmail: @member.officeEmail, officeNumber: @member.officeNumber, permanentAddress: @member.permanentAddress, personalEmail: @member.personalEmail, position: @member.position, spouse: @member.spouse }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
