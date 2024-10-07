require "application_system_test_case"

class UserLoginTest < ApplicationSystemTestCase
  def setup
    @user = User.create(email: "test@example.com", password: "password")
  end

  test "user can log in with valid credentials" do
    visit new_user_session_path

    fill_in "Email", with: @user.email
    fill_in "Password", with: "password"

    click_on "Log in"

    assert_current_path root_path
  end

  test "user cannot log in with invalid credentials" do
    visit new_user_session_path

    fill_in "Email", with: @user.email
    fill_in "Password", with: "wrongpassword"

    click_on "Log in"

    # Assert that the user sees an error message
    assert_selector "div.alert", text: "Login failed:"
  end
end
