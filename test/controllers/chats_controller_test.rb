require "test_helper"

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chats_home_path
    assert_response :success
    assert_select "form"
  end
end
