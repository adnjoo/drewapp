require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get articles index when not signed in" do
    get articles_path
    assert_response :success
    assert_select "h1", "Articles"
  end
end
