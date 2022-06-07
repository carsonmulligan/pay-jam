require "test_helper"

class SplitControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get split_show_url
    assert_response :success
  end
end
