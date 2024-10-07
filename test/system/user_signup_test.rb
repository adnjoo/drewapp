require "application_system_test_case"

class UserSignupTest < ApplicationSystemTestCase
  test "user can sign up with valid details" do
    visit new_user_registration_path

    fill_in "Email", with: "testuser@example.com"
    fill_in "Password", with: "password123"
    fill_in "Password confirmation", with: "password123"

    click_button "Sign up"

    assert_current_path root_path
    assert_text "Welcome! You have signed up successfully."
  end

  test "user cannot sign up with invalid details" do
    visit new_user_registration_path

    fill_in "Email", with: ""
    fill_in "Password", with: "password123"
    fill_in "Password confirmation", with: "mismatchpassword"

    click_button "Sign up"

    assert_text "Email can't be blank"
    assert_text "Password confirmation doesn't match Password"
  end
end
