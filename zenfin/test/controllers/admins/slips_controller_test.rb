require "test_helper"

class Admins::SlipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_slip = admins_slips(:one)
  end

  test "should get index" do
    get admins_slips_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_slip_url
    assert_response :success
  end

  test "should create admins_slip" do
    assert_difference("Admins::Slip.count") do
      post admins_slips_url, params: { admins_slip: {  } }
    end

    assert_redirected_to admins_slip_url(Admins::Slip.last)
  end

  test "should show admins_slip" do
    get admins_slip_url(@admins_slip)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_slip_url(@admins_slip)
    assert_response :success
  end

  test "should update admins_slip" do
    patch admins_slip_url(@admins_slip), params: { admins_slip: {  } }
    assert_redirected_to admins_slip_url(@admins_slip)
  end

  test "should destroy admins_slip" do
    assert_difference("Admins::Slip.count", -1) do
      delete admins_slip_url(@admins_slip)
    end

    assert_redirected_to admins_slips_url
  end
end
