require "test_helper"

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login if not logged in" do
    get chats_home_path
    assert_redirected_to new_user_session_path
  end
end
