require "test_helper"

class UserTest < ActiveSupport::TestCase
  # Test the validity of fixture data
  def setup
    @user_one = users(:one)
    @user_two = users(:two)
  end

  # Test the validity of the fixtures
  test "user fixtures should be valid" do
    assert @user_one.valid?, "User one should be valid"
    assert @user_two.valid?, "User two should be valid"
  end

  # Test email presence validation
  test "should not save user without email" do
    user = User.new(encrypted_password: "somepassword")
    assert_not user.save, "Saved the user without an email"
  end

  # Test password presence validation
  test "should not save user without password" do
    user = User.new(email: "newuser@example.com")
    assert_not user.save, "Saved the user without a password"
  end
end
