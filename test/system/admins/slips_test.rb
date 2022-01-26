require "application_system_test_case"

class Admins::SlipsTest < ApplicationSystemTestCase
  setup do
    @admins_slip = admins_slips(:one)
  end

  test "visiting the index" do
    visit admins_slips_url
    assert_selector "h1", text: "Slips"
  end

  test "should create slip" do
    visit admins_slips_url
    click_on "New slip"

    click_on "Create Slip"

    assert_text "Slip was successfully created"
    click_on "Back"
  end

  test "should update Slip" do
    visit admins_slip_url(@admins_slip)
    click_on "Edit this slip", match: :first

    click_on "Update Slip"

    assert_text "Slip was successfully updated"
    click_on "Back"
  end

  test "should destroy Slip" do
    visit admins_slip_url(@admins_slip)
    click_on "Destroy this slip", match: :first

    assert_text "Slip was successfully destroyed"
  end
end
