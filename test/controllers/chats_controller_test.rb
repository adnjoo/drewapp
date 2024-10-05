require "test_helper"

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chats_home_path
    assert_response :success
    assert_select "form"
  end

  test "should create chat and get response" do
    skip "Skipping this test for now"
    post chats_create_url, params: { prompt: "test prompt" }

    assert_response :success
    assert_select "h3", "Response:"
    assert_select "p", /.*./
  end
end
